---
permalink: /blog/
title: "One Loose Canon"
---

{% if site.posts.size > 0 %}
{% for post in site.posts %}
- [{{ post.title }}]({{ post.url | relative_url }}){% if post.date %} ({{ post.date | date: "%B %-d, %Y" }}){% endif %}
{% endfor %}
{% else %}
No posts yet.
{% endif %}

---

<p class="page__meta"><a href="{{ '/blog/ai-policy/' | relative_url }}">AI policy</a></p>
