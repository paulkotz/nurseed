
		<section class="top-nav">
		<div class="container">
			<div class="row">
				<div class="col-sm-6 col-sm-push-6">
					<nav>
						<button type="button" class="mobile-menu-button visible-xs" onclick="mobileMenuButtonClick(this)">Menu</button>
						<ul class="clearfix">


							<% loop $Menu(1) %>
							<li class="$LinkingMode">
								<a href="$Link"> <div>$MenuTitle.XML</div></a>
								<% if Children %>
								<ul class="sub-menu">
									<% loop $Children %>
									<li class="$LinkingMode"><a href="$Link">$MenuTitle.XML</a></li>
									<% end_loop %>
								</ul>
								<% end_if %>
							</li>
							<% end_loop %>
							
						</ul>
						<div class="nav-bottom-shadow"></div>
					</nav>
				</div>
				<div class="col-sm-6 col-sm-pull-6">
					<a href="home" class="site-logo">
						<h1><img src="{$ThemeDir}/images/ALFH-logo-lg2.jpg" alt="The Alfred Logo Image" class="header-logo"> <span>Nursing Education</span></h1>
					</a>
				</div>
			</div>
		</div>
	</section>
