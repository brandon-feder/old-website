---
layout: default
title: "Grandpa's 2022 Birthday"

gradient_dir: "bottom"
gradient_start: "#9d1818"
gradient_end: "#e6aaaa"
---

For my Grandfather's 2022 birthday, I wrote a program that renders the [Budhabrot fractal](https://en.wikipedia.org/wiki/Buddhabrot){:target="_blank"} at a very high definition using my computer's NVIDIA 2060 Super. I then bought him a wall-print from [Shutterfly](www.shutterfly.com){:target="_blank"}.

## What is the Budhabrot?
Two understand the Budhabrot fractal, you need to understand what how to render the Mandelbrot fractal. I would encourage you to watch these two videos:

<iframe width="560" height="315" src="https://www.youtube.com/embed/NGMRB4O922I" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

<iframe width="560" height="315" src="https://www.youtube.com/embed/2JUAojvFpCo" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

The algorithm that draws the Budhabrot fractal is very slightly different from the one used to draw the Mandelbrot fractal. 

When drawing the simplest representation of the Mandelbrot fractal, you color every point, $$c$$, black if 

$$z_{n+1} = z_{n} + c \tag{1}$$ 

does not diverge where $$z_0 = 0$$. Every pixel in the image is therefore black or white, on or off, divergent or not.

![Mandelbrot Fractal](/assets/mandel-bw.jpg)

The fancy colorings online show other aspects of the set itself, most commonly the rate of divergence of those points not in the set. However, that is not important right now.

Unlike the Mandelbrot set, the drawing of the Budhabrot fractal is a heatmap where each pixel has a "heat" or "activity" value associated with it. To figure out this "heat," you choose millions, billions, or in my case trillions of random values for $$c$$. Then, for every $$z_n$$ generated from (1), you increment the pixel's value for which $$z_n$$ is in. This video illustrates the algorithm well:

<iframe width="560" height="315" src="https://www.youtube.com/embed/4V5EIlFTqrk" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

## The Actual Programming

For the program itself, I cloned one of my old Mandelbrot set rendering codes and adjusted it slightly to render the Budhabrot instead. I then implemented a trick that uses Monte-Carlo importance estimation to decrease the computation time. There are a few other things going on that you can read about here:

- [https://benedikt-bitterli.me/buddhabrot/](https://benedikt-bitterli.me/buddhabrot/){:target="_blank"}

Finally, I referenced this persons Lisp program:

- [https://erleuchtet.org/2010/07/ridiculously-large-buddhabrot.html](https://erleuchtet.org/2010/07/ridiculously-large-buddhabrot.html){:target="_blank"}

The original code, which you can find on my GitHub, was already GPU accelerated. I ran the render for around 22 hours. The image after some de-noise and lossless JPG compression takes just over 200Mb of storage. Here is a VERY-compressed version of the final render:

![Budhabrot Compressed](/assets/buddhabrot_small_compressed.jpg){:target="_blank"}

You can get the full render from my Google Drive [here](https://drive.google.com/drive/folders/1eL0HmrvK0zet2toaUuTkjs0Bk9ki8IOV?usp=sharing){:target="_blank"}.

