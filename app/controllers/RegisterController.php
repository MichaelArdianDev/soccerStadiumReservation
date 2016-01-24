<?php

class RegisterController extends ControllerBase
{

    public function initialize() {
      parent::initialize();
    }

    public function indexAction()
    {
   		if ($this->request->isPost()) {

   			$register = new Users();

   			$register->id 				    = UUID::v4();
   			$register->password 		  = $this->security->hash($this->request->getPost('password'));
   			$register->phonenumber 		= $this->request->getPost('phonenumber');
   			$register->email 			    = $this->request->getPost('email');
   			$register->name 			    = $this->request->getPost('name');
   			$register->created_date 	= Carbon::now()->now()->toDateTimeString();
   			$register->updated_date 	= Carbon::now()->now()->toDateTimeString();

        $user = Users::findFirstByEmail($register->email);
        if($user):
              $this->flash->error("can not register, User " . $register->email . " Alredy Registerd! ");
            return true;
        endif;

        if ($register->save()===true) {

              $this->session->set('user_name', $register->name);
              $this->session->set('user_email', $register->email);
              $this->session->set('user_id', $register->id);        

              $this->flash->success("Your " . $register->email . " has been registered Please Login for booking court");
              $this->response->redirect('dashboard');
        }
      }
    }
}

