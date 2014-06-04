<section class="home-content main">
		<div class="container">
			<div class="row home-feature">
				<div class="col-sm-6 xs-full-width"><div class="l-margin-n10"><img src="$HomeImage.URL" alt=" " class="homepage-feature-image"></div></div>
				<div class="col-sm-6">
					<div class="home-feature-text">
						$Content
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-sm-6 xs-full-width">
					<div class="upcoming-event-container featured-item-container l-margin-n10 clearfix">
						<h3>UPCOMING EVENT</h3>
						<div class="image"><a href="$EventBoxLink.Link"><img src="$EventBoxImage.URL" alt="Event Image"></a></div>
						<div class="text">
							<div class="summary"><a href="$EventBoxLink.Link">$EventBoxTitle</a></div>
							<a href="$EventBoxLink.Link" class="link">Check it out for yourself</a>
						</div>
					</div>
				</div>
				<div class="col-sm-3 xs-full-width">
					<div class="featurned-course-container featured-item-container l-margin-n10 clearfix">
						<h3>FEATURED COURSE</h3>
						<div class="image"><img src="{$ThemeDir}/images/featured-course-icon.png" alt="Image"></div>
						<div class="text">
							<div class="summary"><a href="$CourseBoxLink.Link">$CourseBoxTitle</a></div>
							<a href="$CourseBoxLink.Link" class="link">See all courses</a>
						</div>
					</div>
				</div>
				<div class="col-sm-3 xs-full-width">
					<div class="professional-development-container featured-item-container s-margin-n10 clearfix">
						<h3>Professional Development</h3>
						<div class="image"><img src="{$ThemeDir}/images/document-icon.png" alt="Image"></div>
						<div class="text">
							<div class="summary"><a href="$DevelopmentBoxLink.Link">$DevelopmentBoxTitle</a></div>
							<a href="$DevelopmentBoxLink.Link" class="link">Learn more</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>