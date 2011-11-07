    <meta name="keywords" content="{{ page.keywords }}" />
	<meta name="description" content="{{ page.description }}" />
    <meta name="copyright" content="{{ site.copyright }}" />
	<meta name="author" content="{{ site.author }}" />
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    {% stylesheet_link "reset.css?1" %}
    {% stylesheet_link "fonts.css?1" %}
	{% stylesheet_link "style.css?1" %}
	{% if editmode %}{% stylesheet_link "assets/admin/editmode.css" static_host="true" %}{% endif %}
    <!--[if lt IE 8]>{% stylesheet_link "style_ie.css?1" %}<![endif]-->
    <link rel="icon" href="/favicon.ico" type="image/x-icon" />
	<link rel="shortcut icon" href="/favicon.ico" type="image/ico" />
	<link rel="shortcut icon" href="/favicon.ico" type="image/x-icon" />
	{% if site.search.enabled %}
	{% stylesheet_link "assets/site_search/2.0/site_search.css?1" static_host="true" %}
    {% endif %}
    <meta name="viewport" content="initial-scale=1" />
	<!--[if IE]><link rel="stylesheet" href="http://static.edicy.com/assets/ie.css" type="text/css" /><![endif]-->
	<title>{% if article %}{{ article.title }} | {{site.name}}{% else %}{{site.name}} | {{ page.title }}{% endif %}</title>