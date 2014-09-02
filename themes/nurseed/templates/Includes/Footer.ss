	<footer class="page-footer">
		<div class="container">
			<div class="row">
				<div class="col-sm-6">
					<div class="footer-links">
						<h3>$SiteConfig.Title</h3>
						<ul class="clearfix">
							<% loop $Menu(1) %>
							<li class="$LinkingMode"><a href="$Link"> <div>$MenuTitle.XML</div></a></li>
							<% end_loop %>
						</ul>
					</div>
				</div>
				<div class="col-sm-3 col-sm-offset-3">
					<div class="external-alfred-links">
						<h3><a href="http://www.alfred.org.au/" target="_blank"><img src="{$ThemeDir}/images/alfred-health-logo-compressed.png" alt="Alfred health logo"></a></h3>
						<% with Page(home) %>$FooterAlfredHealthLinks<% end_with %>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-sm-12">
					<div class="copyright">
						&copy; Alfred Health 2014.<br />
						<a href="http://smallstudio.com.au" target="_blank">Website design by Small Studio.</a>
					</div>
				</div>
			</div>
		</div>
	</footer>