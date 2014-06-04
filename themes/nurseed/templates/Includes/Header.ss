	<header class="top-bar">
		<div class="container">
			<div class="row">
				<div class="col-sm-6">
					<div class="alfred-health-text">
						<a href="http://www.alfred.org.au/" target="_blank">Alfred Health</a>
					</div>
				</div>
				<div class="col-sm-3 hidden-xs">
					<div class="staff-login">
						<%-- <a href="#">Staff Login</a> --%>
					</div>
				</div>
				<div class="col-sm-3 hidden-xs">
					<div class="search-container">
						<form id="SearchForm_SearchForm" action="{$Link}SearchForm" method="get" enctype="application/x-www-form-urlencoded" class="search-form">
						<input type="submit" value="" name="action_results" id="SearchForm_SearchForm_action_results">
						<input type="search" name="Search" id="SearchForm_SearchForm_Search" placeholder="Search...">
					</form>
					</div>
				</div>
			</div>
		</div>
	</header>
