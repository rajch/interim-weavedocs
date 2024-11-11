---
title: Search
menu_order: 121
search_type: Documentation
---
{% raw %}
<input data-pitchfork-input type="text" placeholder="Search">
<div data-pitchfork-results style="display: none;"
     data-pitchfork-index-url="/weave/search-index.json">
    <script type="x-tmpl-mustache">
    {{#results}}
    <a href="{{url}}">
        <div>{{{highlights.title}}}</div>
        <div>{{{highlights.text}}}</div>
    </a>
    {{/results}}

    {{^results}}
    <div>No matches, keep typing...</div>
    {{/results}}
    </script>
</div>

<script src="https://unpkg.com/@dropseed/pitchfork@<1.0.0/dist/search.js"></script>
{% endraw %}