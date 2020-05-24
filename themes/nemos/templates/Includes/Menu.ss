<div class="cd-nav">
    <nav class="menu menu--mohe">
        <% loop $Menu(1) %>
            <a class="menu__item" href="$Link">
                <span class="menu__item-name">$MenuTitle</span>
                <span class="menu__item-label">$Title</span>
            </a>
            $MenuTitle_Holder
        <% end_loop %>
    </nav>
</div>
