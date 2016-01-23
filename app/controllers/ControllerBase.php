<?php

use Phalcon\Mvc\Controller;

class ControllerBase extends Controller
{
    public function checkSession() {
    	
        if(!$this->session->get('user_id')):
            $this->flash->error('You must login first for booking Court');
            $this->response->redirect('/');
        endif;
    }

}
