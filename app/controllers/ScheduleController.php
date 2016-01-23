<?php

class ScheduleController extends \Phalcon\Mvc\Controller
{

    public function indexAction()
    {
    	$this->view->pick('dashboard/index');
    }

}

