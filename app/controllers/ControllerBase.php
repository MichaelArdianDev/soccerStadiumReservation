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

        $this->assets
          ->collection('jsFooter')
          ->addJs('js/plugins/jQuery/jQuery-2.1.4.min.js')
          ->addJs('js/plugins/slimScroll/jquery.slimscroll.min.js')
          ->addJs('js/plugins/fastclick/fastclick.min.js')
          ->addJs('js/AdminLTE/app.min.js')
          ->addJs('js/AdminLTE/demo.js');
    }

    public function checkSession() {
    	
        if(!$this->session->get('user_id')):
            $this->flash->error('You must login first for booking Court');
            $this->response->redirect('/');
        endif;
    }

}
