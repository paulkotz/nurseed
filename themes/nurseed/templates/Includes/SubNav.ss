
	<% if LinkOrSection = section %>
	<ul>
			<% loop $Menu(2) %>
				<li class="$LinkingMode"><a href="$Link" title="Go to the $Title.XML page"><div>$MenuTitle.XML</div></a>

					<% if $Children %>
						<ul class="tertiary-menu">
							<% loop Children %>
							<li class="$LinkingMode"><a href="$Link" title="Go to the $Title.XML page"><div>$MenuTitle.XML</div></a>
							<% end_loop %>
						</ul>
					<% end_if %>

				</li>
			<% end_loop %>

	</ul>
	<% end_if %>