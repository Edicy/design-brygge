<!DOCTYPE html>
<html lang="{{ page.language_code }}">
<head>
{% include "SiteHeader" %}
{{blog.rss_link}}
</head>
<body id="front">
<div id="wrap" class="clear content-hyphenate">
  <div id="header">
    <div class="clear">
      {% include "Langmenu" %}
    </div>
    <div id="logo" class="clear">{% editable site.header %}</div>
   {% include "Mainmenu" %}
  </div>
  <!-- //header -->
  <div id="content-wrap">
    <div id="content" class="clear padd-0">
    
     <div class="padd-20">
     
     <h1>{% editable article.title %}</h1>
     <p><span class="author">{{article.author.name}}</span> / {{article.created_at | format_date:"long"}}{% unless article.comments_count == 0 %} / <span class="comments">{{"comments" | lc}}</span> <a href="{{article.url}}#comments" class="comments-nr edy-site-blog-comments-count">{{article.comments_count}}</a>{% endunless %}</p>

      <div class="excerpt" data-search-indexing-allowed="true">{% editable article.excerpt %}</div>
      <div data-search-indexing-allowed="true">{% editable article.body %}</div>
      
      {% if editmode %}
            <div class="cfx article-tags">
                <div class="article-tag-icon"></div>
                {% editable article.tags %}
            </div>
          {% else %}
            {% unless article.tags == empty %}
                <div class="cfx article-tags">
                    <div class="article-tag-icon"></div>
                    {% for tag in article.tags %}
                        <a href="{{ article.page.url }}/tagged/{{ tag.path }}">{{ tag.name }}</a>{% unless forloop.last %}, {% endunless %}
                    {% endfor %}
                </div>
            {% endunless %}
        {% endif %}

{% unless article.comments_count == 0 %} 
      <div id="comments">
        <h2>{% case article.comments_count %}{% when 0 %}{{"no_comments"|lc}}{% else %}{{"comments_for_count"|lc}}: <span class="edy-site-blog-comments-count">{{article.comments_count}}</span>{% endcase %}</h2>
        <ul>
        {% for comment in article.comments %}
          <li class="edy-site-blog-comment">
            <p><span class="comment-author">{{comment.author}}</span> <span class="comment-date">{{comment.created_at | format_date:"short"}}</span>{% removebutton %}</p>
            {{comment.body_html}}
          </li>
          {% endfor %}
        </ul>
      </div>
      <!-- //comments -->
{% endunless %}
      
     </div> 

    <div id="comment-form">  
    <h2>{{"add_a_comment"|lc}}</h2>
    {% commentform %}
    {% unless comment.valid? %}<ul class="blog-errors">
    {% for error in comment.errors %}
    <li>{{ error | lc }}</li>
    {% endfor %}
    </ul>{% endunless %}
     <div class="form_field"><label for="commentform-name">{{"name"|lc}}</label>
       <input type="text" class="form_field_textfield" id="commentform-name" value="{{comment.author}}" name="comment[author]" /></div>
     
     <div class="form_field"><label for="commentform-email">{{"email"|lc}}</label>
       <input type="text" class="form_field_textfield" id="commentform-email" value="{{comment.author_email}}" name="comment[author_email]" /></div>
     
     <div class="form_field"><label for="commentform-body">{{"comment"|lc}}</label>
       <textarea class="form_field_textarea" rows="4" cols="5" name="comment[body]">{{comment.body}}</textarea></div>
     
     <div class="form_submit"><input type="submit" class="submit" value="{{"submit"|lc}}" /></div>
    {% endcommentform %}
    </div>

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