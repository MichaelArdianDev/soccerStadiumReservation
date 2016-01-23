<?php

class ProcessController extends \Phalcon\Mvc\Controller
{

	public function indexAction(){
		$orderList = TempOrder::find("user_id = '{$this->session->get('user_id')}'");
		$this->view->setVar('data', $orderList);
	}

    public function addAction($stadium,$hour,$idUser) {

    	$order = new TempOrder();

    	$order->stadium = $stadium;
    	$order->start_hour 	= $hour;
    	$order->end_hour 	= $hour+01;
    	$order->user_id = $idUser;

    	$order->save();
	    $this->response->redirect('/process');
    }
}

