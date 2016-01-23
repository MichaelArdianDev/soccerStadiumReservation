<?php

use Phalcon\Mvc\Controller;

class LoginController extends Controller
{
  public function initialize()
  {
  }

  public function indexAction()
  {
    if ($this->request->isPost()) {

      $username = $this->request->getPost('email');
      $password = $this->request->getPost('password');

      $user = Users::findFirstByEmail($username);

      if ($user->id) {

        if ($this->security->checkHash($password, $user->password)) {

            $this->session->set('user_name', $user->name);
            $this->session->set('user_email', $user->username);
            $this->session->set('user_id', $user->id);
            $this->response->redirect('dashboard');
            return;
        }

      } else{
        $this->flash->error('Invalid username or password.');
      }
    }
  }

  public function outAction()
  {
    $this->session->destroy();
    $this->response->redirect('');
  }
  public function generateAction($plainPassword="")
  {
    echo "Hash: $plainPassword <br/>";
    echo $this->security->hash($plainPassword);
    exit;
  }
}

