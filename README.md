# Jekyll::Latex

Use LaTeX with Jekyll.

Supports all LaTeX syntax supported by [PolyTeXnic](https://github.com/softcover/polytexnic). For Jekyll 3.0 and up.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'jekyll-latex'
```

And then execute:

```
$ bundle
```

Or install it yourself as:

```
$ gem install jekyll-latex
```

Lastly, add it to the plugins section of the `_config.yml` file:

```
plugins:
  - jekyll-latex
```

## Usage

Create files with the `.tex` extension in the `_posts` directory, as in

`_posts/2017-07-12-test-post.tex`:

```
---
layout: post
title:  "Welcome to Jekyll 3"
categories: jekyll update
published: true
---

This is a \LaTeX\ file. 

\emph{This} is a \LaTeX\ file. 

This \emph{is} a \LaTeX\ file.
```

### Mathematics

To get mathematics to render, you should include [MathJax](https://www.mathjax.org) on your site. The simplest configuration looks like this and should be put in the `head` of your page:

```html
<!DOCTYPE html>
<html>
  .
  .
  .
  <head>
    .
    .
    .
    <script type="text/javascript" async
  src="https://cdnjs.cloudflare.com/ajax/libs/mathjax/2.7.7/MathJax.js?config=TeX-MML-AM_CHTML">
    </script>
  </head>
  <body>
    .
    .
    .
  </body>
</html>
```

MathJax includes many options; here’s one configuration that I like that hides the “processing” message and supports dollar-sign style math input like `$x$` (note that this means you will have to escape out literal dollars signs with a leading backslash, as in `This costs \$20`):

```html
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/mathjax/2.7.1/MathJax.js?config=TeX-AMS_HTML">
  MathJax.Hub.Config({
    "HTML-CSS": {
      availableFonts: ["TeX"],
    },
    tex2jax: {
      inlineMath: [['$','$'],["\\(","\\)"]]},
      displayMath: [ ['$$','$$'], ['\[','\]'] ],
    TeX: {
      extensions: ["AMSmath.js", "AMSsymbols.js", "color.js"],
      equationNumbers: {
        autoNumber: "AMS"
      }
    },
    showProcessingMessages: false,
    messageStyle: "none",
    imageFont: null,
    "AssistiveMML": { disabled: true }
  });
</script>
```