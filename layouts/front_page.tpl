x<!DOCTYPE html>
<html lang="{{ page.language_code }}">
<head>
{% include "SiteHeader" %}
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
    <div id="content" class="clear">
     <div class="clear" data-search-indexing-allowed="true">
     {% content %}
     </div>
     {% include "News" %} 
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