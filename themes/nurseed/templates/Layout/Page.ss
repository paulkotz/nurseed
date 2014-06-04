<section class="content-page page-title">
		<div class="container">
			<div class="row">
				<div class="col-sm-6">
					<h2 class="page-title-text">$Title</h2>
				</div>
			</div>
		</div>
	</section>


	<section class="content-page main">
		<div class="container">
			<% if Menu(2) %>
			<div class="col-sm-3 col-sm-push-9">
				<nav class="right-nav s-margin-n10">
					<div class="topic-title">$Level(1).Title </div>
					<% include SubNav %>
				</nav>
			</div>
			<div class="col-sm-9 col-sm-pull-3">
			<% else %>
				<div class="col-sm-9">
			<% end_if %>
				<!-- Main content -->
				<div class="main-content l-margin-n10">
					
					$Content
					$Form

				</div>
				<!-- Main content END-->
			</div>
			
		</div>
	</section>