<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<script src="{{ site.static_asset_host }}/libs/picturefill/latest/picturefill.min.js"></script>
{% if site.search.enabled %}
<script type="text/javascript" src="http://static.edicy.com/assets/site_search/3.0/site_search.js?2"></script>
<script type="text/javascript">
var edys_site_search_options = {
    texts: { noresults: "{{ "search_noresults"|lc }}" },
	default_stylesheet_enabled: false
}
</script>
{% endif %}
<script type="text/javascript">
$(function() { 
    $(window).resize(function() 
		{if($(window).height() < $('#header').height()) 
			{$('#header').addClass('static').removeClass('fixed');}
            else {$('#header').addClass('fixed').removeClass('static')}});
});
$(function() {
	$(window).trigger('resize');
});
</script>
{% unless editmode %}{{site.analytics}}{% endunless %}
