<?php

class ProcessController extends ControllerBase
{

    public function initialize(){
        $this->checkSession();
    }
    
	public function indexAction(){
		$orderList = TempOrder::find("user_id = '{$this->session->get('user_id')}'");
		$this->view->setVar('data', $orderList);
	}

    public function delAction($id){
        $orderList = TempOrder::find("id = {$id} AND user_id = '{$this->session->get('user_id')}'");
        $orderList->delete();
        $this->response->redirect('/process');
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

    public function checkoutAction() {
        $id = $this->session->get('user_id');
        $orderList = TempOrder::find("user_id = '{$this->session->get('user_id')}'");
        foreach ($orderList as $key => $value) {
            $order = new Orders();
            $order->id = UUID::v4();
            $order->stadium = $value->stadium;
            $order->start_hour = $value->start_hour;
            $order->end_hour = $value->end_hour;
            $order->user_id = $value->user_id;
            $order->save();
            $value->delete();
        }
        $this->response->redirect('/dashboard');
    }
}