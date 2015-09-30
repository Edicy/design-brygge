    <meta name="keywords" content="{{ page.keywords }}" />
	<meta name="description" content="{{ page.description }}" />
    <meta name="copyright" content="{{ site.copyright }}" />
	<meta name="author" content="{{ site.author }}" />
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    {% if site.search.enabled %}{% stylesheet_link "assets/site_search/3.0/style.css?1" static_host="true" %}{% endif %}
    {% stylesheet_link "reset.css?1" %}
    {% stylesheet_link "fonts.css?1" %}
	{% stylesheet_link "style.css?3" %}
	{% if editmode %}<style>.untranslated{opacity:.5;filter:alpha(Opacity=50);zoom:1}</style>{% endif %}
    <!--[if lt IE 8]>{% stylesheet_link "style_ie.css?1" %}<![endif]-->
    <link rel="icon" href="/favicon.ico" type="image/x-icon" />
	<link rel="shortcut icon" href="/favicon.ico" type="image/ico" />
	<link rel="shortcut icon" href="/favicon.ico" type="image/x-icon" />
    <meta name="viewport" content="initial-scale=1" />
	<!--[if IE]><style>.clearfix { zoom:1; }</style><![endif]-->
	<title>{% if article %}{{ article.title }} | {{page.site_title}}{% else %}{% unless page.site_title == "" %}{{ page.site_title }} | {% endunless %}{{ page.title }}{% endif %}</title>
    <script src="{{ javascripts_path }}/modernizr.js"></script>