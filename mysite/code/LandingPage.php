<?php
class LandingPage extends Page{

	private static $db = array(

	);

	private static $has_one = array(

	);


	function getCMSFields(){
		$fields = parent::getCMSFields();
		$fields->removeFieldFromTab("Root.Main","Content");

		return $fields;
	}

}
class LandingPage_Controller extends Page_Controller {


	private static $allowed_actions = array (
	);

	public function init() {
		parent::init();

	}

}
