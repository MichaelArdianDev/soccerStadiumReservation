<?php

class DashboardController extends ControllerBase
{
    public function initialize(){
        $this->checkSession();
    }

    public function indexAction()
    {
    	$hours = [
			'09' 	=>  ['hours' => '09', 'desc' => '09:00 - 10:00'],
			'10' 	=>  ['hours' => '10', 'desc' => '10:00 - 11:00'],
			'11' 	=>  ['hours' => '11', 'desc' => '11:00 - 12:00'],
			'12' 	=>  ['hours' => '12', 'desc' => '12:00 - 13:00'],
			'13' 	=>  ['hours' => '13', 'desc' => '13:00 - 14:00'],
			'14' 	=>  ['hours' => '14', 'desc' => '14:00 - 15:00'],
			'15' 	=>  ['hours' => '15', 'desc' => '15:00 - 16:00'],
			'16' 	=>  ['hours' => '16', 'desc' => '16:00 - 17:00'],
			'17' 	=>  ['hours' => '17', 'desc' => '17:00 - 18:00'],
			'18' 	=>  ['hours' => '18', 'desc' => '18:00 - 19:00'],
			'19' 	=>  ['hours' => '19', 'desc' => '19:00 - 20:00'],
			'20' 	=>  ['hours' => '20', 'desc' => '20:00 - 21:00'],
			'21' 	=>  ['hours' => '21', 'desc' => '21:00 - 22:00'],
    	];

    	$stadium = [];
    	for ($i=1; $i <=8 ; $i++) { 

    		foreach ($hours as $key => $value) {

	    		$order = Orders::findFirst("stadium = '{$i}' AND start_hour = '{$key}'");
	    		$name = $link;

	    		if($order):
	    			$name = $order->Userss->name;
	    		endif;

	    		$link = "<a href=\"/process/add/{$i}/{$key}/{$this->session->get('user_id')}\" class=\"btn-xs btn-success\">Book Now</a>";
	    		$stadium[$key][$i]	 = [
	    			'desc' 		=> $value['desc'],
	    			'userId' 	=> ($order->user_id) ? $order->user_id : "" ,
	    			'name' 		=> $name,
	    		];
    		}
    	}

    	$this->view->setVar('data', $stadium);
    }

}