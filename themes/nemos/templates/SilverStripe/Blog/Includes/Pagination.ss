<% if $MoreThanOnePage %>
<div class="twelve columns padding-top-small" data-scroll-reveal="enter bottom move 60px over 0.9s after 0.1s">
    <ul class="blog-pagination">
        <li>
		<% if $NotFirstPage %>
            <a href="{$PrevLink}">
                <div class="arrow-icons"><span class="fa-long-arrow-left"></span></div>
            </a>
        <% else %>
            <div class="arrow-icons curent"><span class="fa-long-arrow-left"></span></div>
		<% end_if %>
        </li>
		<% loop $PaginationSummary(4) %>
            <li>
            <% if $CurrentBool %>
                <p class="curent">$PageNum</p>
            <% else %>
                <% if $Link %>
                    <a href="$Link"><p>$PageNum</p></a>
                <% else %>
                    <p class="no-shadow">...</p>
                <% end_if %>
            <% end_if %>
            </li>
        <% end_loop %>
        <li>
        <% if $NotLastPage %>
                <a href="{$NextLink}">
                    <div class="arrow-icons"><span class="fa-long-arrow-right"></span></div>
                </a>
            <% else %>
                <div class="arrow-icons curent"><span class="fa-long-arrow-right"></span></div>
            <% end_if %>
        </li>
    </ul>
</div>
<% end_if %>
