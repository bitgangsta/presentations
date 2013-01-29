# Presentations

A collection of personal presentations/talk I've given or intend on giving. Feel free to send
pull requests, comments, or any kind of feedback.

Daniel Jabbour - [@bitgangsta](http://twitter.com/bitgangsta)

## Based on Reveal.js and Middleman

This project utilizes the [reveal.js](http://github.com/hakimel/reveal.js/) presentation framework
in combination with the [Middleman](http://github.com/middleman/middleman) static site generator.
This makes creating new presentations incredibly easy. To do so:

### Create a new presentation folder and index.html.erb

Make a folder such as `source/<your_presentation>`. Inside, create an index.html.erb. This will
contain the presentation. At the top of the file, you can set certain variables, such as:

```
---
title: My presentation title
description: A great presentation.
theme: beige
---
```

Now, underneath these variables you can put your `<section>`s, which are your individual slides,
as you would for any reveal.js presentation. You can also use markdown. For example:

```html
<section data-markdown>
	<script type="text/template">
		## Page title

		A paragraph with some text and a [link](http://hakim.se).
	</script>
</section>
```

>Note: You can also break the individual slides out inside partials (see one of the existing
presentations for an example).

## Optional Setup

### Custom themes

The theme variable is optional, and will default to the reveal.js default theme. You can also define
your own new themes by just making a scss file inside `source/stylesheets/reveal/themes` (copy an
existing one to have a starting point).

### Partials

A very clean way to isolate your slides is into partials. For instance, create an index.html.erb with
the following content:

```
<% content_for :javascripts do %>
  <%= javascript_include_tag "mypresentation" %>
<% end %>

<% slides = %w(title slide2 slide3 final) %>

<% slides.each do |slide| %>
  <%= content_tag(:section, partial("slides/#{slide}")) %>
<% end %>
```

... and put your slides into the "slides" directory under your presentation. Super clean. Woot.
