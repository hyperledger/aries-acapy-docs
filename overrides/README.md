# Mkdocs Material Overrides

The following is the `main.html` content for the latest release.

```html
{% extends "base.html" %}

{% block outdated %}
  You're viewing the documentation for the latest ACA-Py Release, 0.8.0.
  <a href="{{ '../' ~ base_url }}"> 
    <strong>Click here</strong>
  </a> for the ACA-Py main branch documentation.
{% endblock %}
```

If the release is older, use the following:

`You're viewing the documentation for ACA-Py Release 0.8.0, which is an <strong>older</strong> version of ACA-Py.`
