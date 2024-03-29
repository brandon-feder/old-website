---
layout: default
title: "My Website"
---

My website, the place where you are reading this, was a small project I worked on for 3-4 days. I wanted one place to post records of the projects I have worked on, as well as resources for people working on those projects with me.

I wrote this website using [Jekyll](https://jekyllrb.com/){:target="_blank"}, an open source, simple, static website generator. I setup the websites layout, header, etc. using HTML and SASS, but Jekyll allows me to type the main content on each page in Markdown.

In addition, Jekyll provides support for [Liquid](https://shopify.github.io/liquid/){:target="_blank"} templating which allows automatic-writing of HTML based off of variables given by Jekyll or defined at the top of each page in a YAML header. For an example, look at the [source code for `/projects.md`](https://github.com/brandon-feder/brandon-feder.github.io/edit/main/projects.md){:target="_blank"}.

I included [Bootstrap 5](https://getbootstrap.com/){:target="_blank"} and the new Bootstrap 5 icons, though I could have probably done without the former.

I included [MathJax](https://www.mathjax.org/){:target="_blank"} so I could write LaTeX math equations. For example, the LaTeX `\int_m^{2m} \frac{1}{x} dx = \ln(2)` tells MathJax to render

$$ \int_m^{2m} \frac{1}{x} dx = \ln(2) $$

Unfortunately, MathJax does not allow the use of the `usepackage` command meaning that I can only use the base LaTeX functionality.

Finally, I got [Kramdown](https://kramdown.gettalong.org/){:target="_blank"}, Jekyll's Markdown interpreter, to use [Rogue](http://rouge.jneen.net/){:target="_blank"} to perform language-specific syntax highlighting:

```python
import math
math.pi = 3

def circle_area(r):
    return math.pi * r * r

r = int(input("Enter Radios: "))
print("The Area Is:", circle_area(r))
```

That's it! If you want to set something like this up for yourself, feel free to clone [this project
's github repo](https://github.com/brandon-feder/brandon-feder.github.io){:target="_blank"}.
