<?php
class HomePage extends Page {

	private static $db = array(
		'FooterAlfredHealthLinks' => 'HTMLText',
		'EventBoxTitle' => 'Text',
		'CourseBoxTitle' => 'Text',
		'DevelopmentBoxTitle' => 'Text'
	);

	private static $has_one = array(
		'HomeImage' => 'Image',
		'EventBoxImage' => 'Image',
		'EventBoxLink' => 'SiteTree',
		'CourseBoxLink' => 'SiteTree',
		'DevelopmentBoxLink' => 'SiteTree'
	);

	static $has_many = array(
		'HomeSlides' => 'HomeSlide'
		);


	function getCMSFields(){
		$fields = parent::getCMSFields();
		//$fields->removeFieldFromTab("Root.Main","Content");

		$footerNewsletterBlurbfield = new HTMLEditorField('FooterAlfredHealthLinks', 'Footer Alfred Health Links'); 
		$footerNewsletterBlurbfield->setRows(4);      
		$fields->addFieldToTab('Root.Main', $footerNewsletterBlurbfield, '');
		$fields->addFieldToTab('Root.Main', new UploadField('HomeImage', 'Home Image'));


		// HOME PAGE BOXES
		$fields->addFieldToTab('Root.EventBox', new TextField('EventBoxTitle', 'Event Box Title'));
		$fields->addFieldToTab('Root.EventBox', new UploadField('EventBoxImage', 'Event Box Image'));
		$box1linkfield = new TreeDropdownField("EventBoxLinkID", "Event Box Link", "SiteTree");
		$fields->addFieldToTab('Root.EventBox', $box1linkfield, '');

		$fields->addFieldToTab('Root.CourseBox', new TextField('CourseBoxTitle', 'Course Box Title'));
		$box2linkfield = new TreeDropdownField("CourseBoxLinkID", "Course Box Link", "SiteTree");
		$fields->addFieldToTab('Root.CourseBox', $box2linkfield, '');

		$fields->addFieldToTab('Root.DevelopmentBox', new TextField('DevelopmentBoxTitle', 'Development Box Title'));
		$box3linkfield = new TreeDropdownField("DevelopmentBoxLinkID", "Development Box Link", "SiteTree");
		$fields->addFieldToTab('Root.DevelopmentBox', $box3linkfield, '');

		// HOME SLIDES
		$slideGridFieldConfig = GridFieldConfig::create()->addComponents(
			new GridFieldToolbarHeader(),
			new GridFieldAddNewButton('toolbar-header-right'),
			new GridFieldSortableHeader(),
			new GridFieldDataColumns(),
			new GridFieldPaginator(20),
			new GridFieldEditButton(),
			new GridFieldDeleteAction(),
			new GridFieldDetailForm(),
			new GridFieldSortableRows('SortOrder')
		);
			
		$slideGridField = new GridField("HomeSlides", "HomeSlides", $this->HomeSlides(), $slideGridFieldConfig);
		$columns = $slideGridField->getConfig()->getComponentByType('GridFieldDataColumns');
		$columns->setDisplayFields(array(
			'Title' => 'Title'
		));
		$fields->addFieldToTab("Root.HomeSlides", $slideGridField);


		return $fields;
	}

}
class HomePage_Controller extends Page_Controller {


	private static $allowed_actions = array (
	);

	public function init() {
		parent::init();

	}

}
