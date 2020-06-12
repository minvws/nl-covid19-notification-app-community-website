---
layout: default
lang: en
lang-ref: covid19-notification-app-community-index
---

{% assign blocks = site.blocks | where: "lang", page.lang | sort: "index" %}
{% assign rows = blocks.size | divided_by: 2.0 | ceil %}
{% for i in (1..rows) %}
{% assign offset = forloop.index0 | times: 2 %}
<div class="row">
    {% for block in blocks limit:2 offset:offset %}
    <div class="col-md-6">
        <div class="content-background">
            <div class="content-background">
                <div class="content">
                    <header class="content__header">
                        <h1 class="content__header-title">{{ block.title }}</h1>
                        <p class="content__header-paragraph">{{ block.subtitle }}</p>
                    </header>
                    {{ block.content }}
                    {% if block.list %}
                    <ul class="list list--subjects columns">
                        {% for item in block.list %}
                        <li class="list__item">
                            <a href="{{ item.href }}" class="list__link">{{ item.title }}</a><br>
                            <p>{{ item.text }}</p>
                        </li>
                        {% endfor %}
                    </ul>
                    {% endif %}
                    {% if block.button %}
                    <a class="btn" href="{{ block.button.href }}" rel="external">{{ block.button.text }}{% if block.button.icon %}<span class="icon icon-{{ block.button.icon }}"></span>{% endif %}</a>
                    {% endif %}
                </div>
            </div>
        </div>
    </div>
    {% endfor %}
</div>
{% endfor %}
