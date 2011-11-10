{% if editmode %}
<div class="clear">
<ul id="langmenu">{% for language in site.languages reversed %}
    <li{% if language.selected? %} class="active"{% endif %}>
  <a href="{{language.url}}">{{language.title}}</a>
	</li>{% endfor %}
	<li>
  {% languageadd %}
	</li>
</ul>
</div>
{% else %}{% if site.has_many_languages? %}
<div class="clear">
<ul id="langmenu">{% for language in site.languages reversed %}
	<li{% if language.selected? %} class="active"{% endif %}>
  <a href="{{language.url}}">{{language.title}}</a>
	</li>{% endfor %}
</ul>
</div>
{% endif %}{% endif %}
