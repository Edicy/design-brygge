{% for a in site.latest_1_articles %}
<h2 class="padd-top">{{"latest_news"|lc}}</h2>
<ul id="latest-news">
{% for article in site.latest_5_articles %}
        <li><span class="date">{{article.created_at | format_date:"%d.%m"}}</span> <a href="{{article.url}}">{{article.title}}</a></li>
{% endfor %}
</ul>
<a class="more" href="{{bloglink}}">{{ "older_news" | lc }}</a>
{% endfor %}