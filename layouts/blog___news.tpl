<!DOCTYPE html>
<html lang="{{ page.language_code }}">
<head>
{% include "SiteHeader" %}
{{blog.rss_link}}
</head>
<body id="front">
<div id="wrap" class="clear">
  <div id="header">
    <div class="clear">
      {% include "Langmenu" %}
    </div>
    <div id="logo" class="clear">{% editable site.header %}</div>
   {% include "Mainmenu" %}
  </div>
  <!-- //header -->
  <div id="content-wrap">
    <div id="content" class="clear">
     {% include "Submenu" %}
     {% content %}
     {% if editmode %}<p>{% addbutton class="add-article" %}</p>{% endif %}
     <ul id="blog-list">
     {% for article in articles %}
        <li>
          <h2><a href="{{article.url}}">{{article.title}}</a></h2>
           <p><span class="author">{{article.author.name}}</span> / {{article.created_at | format_date:"long"}}{% unless article.comments_count == 0 %} / <span class="comments">{{"comments" | lc}}</span> <a href="{{article.url}}#comments" class="comments-nr edy-site-blog-comments-count">{{article.comments_count}}</a>{% endunless %}</p>
          {{article.excerpt}} <a class="more" href="{{article.url}}">{{"read_more"|lc}}</a>
        </li>
        {% endfor %}
      </ul>
    </div>
    <!-- //content -->
    {% include "Footer" %}
  </div>
  <!-- //content-wrap -->
</div>
<!-- //wrap -->
 {% include "JS" %}
</body>
</html>