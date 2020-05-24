<% if $IncludeFormTag %>
			<form $AttributesHTML>
			<% end_if %>
			<% if $Message %>
			<p id="{$FormName}_error" class="message $MessageType">$Message</p>
			<% else %>
			<p id="{$FormName}_error" class="message $MessageType" style="display: none"></p>
			<% end_if %>
			<% loop $Fields %>
				<div class="three columns">
					<label for="$ID"> 
						<span class="error" id="err-name">please enter $Title</span>
					</label> >>>
					$Field
				</div>
			<% end_loop %>
			</div>
			
			<div class="clear"></div>
			<% if $Actions %>	
			<div class="six columns offset-by-six remove-top">
				<% loop $Actions %>
				<div id="button-con">
					<button class="send_message button-effect button--moema button--text-thick button--text-upper button--size-s" id="$HolderID" data-lang="en"><% if $ButtonContent %>$ButtonContent<% else %><span class="btn__title">$Title.XML</span><% end_if %></button></div>
				<% end_loop %>					
			</div>
			<% end_if %>
			<div class="clear"></div>
			<div class="six columns offset-by-six remove-top">
				<div class="error text-align-left" id="err-form">There was a problem validating the form please check!</div>
				<div class="error text-align-left" id="err-timedout">The connection to the server timed out!</div>
				<div class="error" id="err-state"></div>				
			</div>
			<% if $IncludeFormTag %>
			</form>
			<% end_if %>	