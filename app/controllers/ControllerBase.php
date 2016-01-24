<?php

use Phalcon\Mvc\Controller;

class ControllerBase extends Controller
{

    public function initialize(){
        $this->assets
          ->collection('cssHeader')
          ->addCss('css/bootstrap.min.css')
          ->addCss('css/jquery-ui.theme.min.css')
          ->addCss('css/font-awesome.min.css')
          ->addCss('css/skins/_all-skins.min.css')
          ->addCss('css/ionicons.min.css')
          ->addCss('css/AdminLTE.css');

        $this->assets
          ->collection('jsHeader')
          ->addJs('js/jquery.min.js')
          ->addJs('js/jquery-ui.min.js')
          ->addJs('js/bootstrap.min.js')
          ->addJs('js/AdminLTE/app.js');
    }

    public function checkSession() {
    	
        if(!$this->session->get('user_id')):
            $this->flash->error('You must login first for booking Court');
            $this->response->redirect('/');
        endif;
    }

}
