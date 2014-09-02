<?php
class HomeSlide extends DataObject
{
	static $db = array (
		'SortOrder' => 'Int',
		'Title' => 'VarChar(255)'
	);
	
	static $has_one = array (
		'SlideImage' => 'Image',
		'HomePage' => 'HomePage'
	);

	public static $default_sort='SortOrder';

	
	public function getCMSFields()
	 {
		$fields = parent::getCMSFields();
		$fields->removeByName('SortOrder');
		$fields->removeByName('HomePage');

		$fields->addFieldToTab('Root.Main', new UploadField('SlideImage', 'Slide Image - 480x300px'));

		return $fields;
	}

}