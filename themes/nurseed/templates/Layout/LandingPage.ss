<section class="landing-page page-title">
		<div class="container">
			<div class="row">
				<div class="col-sm-3">
					<h2 class="page-title-text">$Title</h2>
				</div>
			</div>
		</div>
	</section>

	<section class="landing-page main">
		<div class="container">
			<div class="col-sm-offset-3 col-sm-9">
				<!-- Main content -->
				<div class="main-content r-margin-n10">
					<ul class="landing-page-nav-list">
						<% loop Children %>
						<li><a href="$Link">$Title</a></li>
						<% end_loop %>
					</ul>

				</div>
				<!-- Main content END-->
			</div>
		</div>
	</section>