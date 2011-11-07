{% if site.search.enabled %}
    <script type="text/javascript" src="http://www.google.com/jsapi"></script>
	<script type="text/javascript" src="http://static.edicy.com/assets/site_search/2.0/site_search.js"></script>
	<script type="text/javascript" charset="utf-8">
  var search_translations = {"search": "{{ "search"|lc }}", "close": "{{ "search_close"|lc }}", "noresults": "{{ "search_noresults"|lc }}"};
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
