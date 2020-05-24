
<div class="section padding-top-from-nav background-black">
		<div class="container">
			<div class="six columns fade-elements">
				<div class="title">
					<h3>$MenuTitle</h3>
					<ul class="list">
			
                    <li>                      
						<strong>LATEST</strong>
						</li>
						<li>
							<strong>HOT</strong>
						</li>
						<li>
							<strong>TRENDING</strong>
						</li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	
	<div class="section padding-top-bottom background-black">
		<div class="container">
			<% if $PaginatedList.Exists %>
				<% loop $PaginatedList %>
					<div class="twelve columns remove-bottom">
						<div class="blog-page-wrapper">
							<% include SilverStripe\\Blog\\PostSummary %>
						</div>
					</div>
				<% end_loop %>
			<% else %>
				<p><%t SilverStripe\\Blog\\Model\\Blog.NoPosts 'There are no posts' %></p>
			<% end_if %>
			<% with $PaginatedList %>
				<% include SilverStripe\\Blog\\Pagination %>
			<% end_with %>
		</div>
	</div>

	