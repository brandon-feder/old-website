---
layout: default
title: "Grandpa's 2022 Birthday"

gradient_dir: "bottom"
gradient_start: "#9d1818"
gradient_end: "#e6aaaa"
---

For my Grandfather's 2022 birthday, I wrote a program that renders the [Budhabrot fractal](https://en.wikipedia.org/wiki/Buddhabrot) at a very high definition using my computer's NVIDIA 2060 Super. I then bought him a wall-print from [Shutterfly](www.shutterfly.com).

For the program itself, I cloned one of my old Mandelbrot set rendering codes and adjusted it slightly to render the Budhabrot instead. I then implemented a trick that uses Monte-Carlo importance estimation to decrease the computation time. There are a few other things going on that you can read about here:

- [https://benedikt-bitterli.me/buddhabrot/](https://benedikt-bitterli.me/buddhabrot/){:target="_blank"}

Finally, I referenced this persons Lisp program:

- [https://erleuchtet.org/2010/07/ridiculously-large-buddhabrot.html](https://erleuchtet.org/2010/07/ridiculously-large-buddhabrot.html){:target="_blank"}

The original code, which you can find on my GitHub, was already GPU accelerated. I ran the render for around 22 hours. The image after some de-noise and lossless JPG compression takes just over 200Mb of storage. Here is a VERY-compressed version of the final render:

![Budhabrot Compressed](/assets/buddhabrot_small_compressed.jpg){:target="_blank"}

You can get the full render from my Google Drive [here](https://drive.google.com/drive/folders/1eL0HmrvK0zet2toaUuTkjs0Bk9ki8IOV?usp=sharing){:target="_blank"}.

<div class=" alert alert-danger">Do not open the normal and definitely not the huge photo unless you know what you are doing. It will likely crash your computer.</div>



