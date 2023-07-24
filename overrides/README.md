# Mkdocs Material Overrides

The following is the `main.html` content for the latest release.

```html
{% extends "base.html" %}

{% block outdated %}
  You are viewing the documentation for the latest ACA-Py Release, 0.8.0.
{% endblock %}
```

If the release is older, use the following:

`You are viewing the documentation for Release 0.8.0, which is <strong>not</strong> the current version of ACA-Py.`
