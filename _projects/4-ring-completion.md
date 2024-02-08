---
layout: default
title: "The Utility of Completions"
---

For the remainder of this document, we will assume all rings are commutative. Let $$k$$ be an algebraically closed field.

Let $$V$$ be a (closed) subvariety, let $$R=k[V]$$ be its' coordinate ring, let $$p \in V$$ be a point, and $$\mathfrak{m}$$ its' corresponding coordinate ring. 

The *localization of $$R$$ at $$S = R \backslash \mathfrak{m}$$*, usually denoted $$R_\mathfrak{m}$$. $$R_\mathfrak{m}$$ is a local ring with unique maximal ideal $$\mathfrak{m}R_\mathfrak{m}$$.

The *completion of $$R$$ at $$\mathfrak{m}$$* is defined to be

$$\hat{R}_\mathfrak{m} := \lim_{\longleftarrow}(R/\mathfrak{m}^n).$$


Intuitively, if a function $$f$$ is defined in a Zariski neighborhood $$U$$ of $$V$$, and it does not vanish on $$V$$, then after removing $$V(f)$$ from $$U$$ we still have a neighbourhood of $$V$$, but for which $$f$$ is invertable. Similarly, by shrinking the support of $$f$$ around $$V$$, eventually $$f$$ will vanish or become a unit. In this sense, the localization of $$R$$ at a maximal ideal $$\mathfrak{m}$$ in a sense is the algebraic analog of the ring of germs of around the point corresponding to $$\mathfrak{m}$$. However, the completion of $$ R_\mathfrak{m}$$ represents the properties of the variety in "far smaller" neighborhoods.

Consider the cubic nodal plain curve $$y^2-x^2(x+1)$$ and the curve $$y^2-x^2$$ which is just a pair of lines. Under the standard metric topology, on sufficiently small intervals these two curves look identical. However, their local rings at $$\mathfrak{m}=(x,y)$$ act differently from one another.

Since the nodal plain curve is irreducible, its coordinate ring $$k[x,y]/(y^2 - x - 1)$$ is a domain, and it follows immediately that the localization of this curve at $$\mathfrak{m}$$ is also a domain, and therefore irreducible. This is not the case for $$y^2-x^2$$.

On the other hand, in $$\hat{k}[x,y]_{(x,y)}/(y^2 - x - 1)$$, $$1+x$$ has a square root given by its Taylor series
 
 $$\sqrt{1+x} = 1 + \frac{1}{2}x - \frac{1}{8}x^2 + \frac{1}{16}x^3 - \frac{5}{32}x^2 + \cdots,$$ 
 
so $$y^2 - x^2(1+x)$$ is reducible.

Another example: Consider the parabola $$y^2 - x - 1$$ and the line $$y$$ which have coordinate rings $$k[x,y]/(y^2 - x - 1)$$ and $$k[x]$$ respectively. The projection $$\pi : y \mapsto 0$$ gives a two-to-one map from the parabola into the line. The map 

$$\pi^\# : :[x] \to :[x,y]/(y^2-x-1) : x \mapsto x$$

can be thought of as the inclusion of the coordinate ring of the line into the coordinate ring of the parabola. The derivative of $$\pi$$ at $$x=0$$ is nonzero, so by the inverse function theorem, $$\pi$$ has a local inverse at $$(0, -1)$$. This inverse is given by the analytic function 

$$\sigma : k \to k : x \mapsto \sqrt{x+1}$$

which is not a polynomial. However, this function is represented by the aforementioned Tayor series, and so at the scale of the completion of the two coordinate rings, 

$$\sigma^\# : \hat{k}[x,y]/(y^2 - x - 1) \to \hat{k}[x] : x \mapsto x,y\mapsto-\sqrt{x+1}.$$

<br>
<hr>
<br>

To read more, I highly suggest [this](https://link.springer.com/book/10.1007/978-1-4612-5350-1) book.

<!-- 

\newcommand{\Spec}[1]{\text{Spec}({#1})} 

\begin{document}
	\maketitle

	

	

	Intuitively, if a function $f$ is defined in a Zariski neighborhood $U$ of $Z$, and it does not vanish on $Z$, then by removing $Z(f)$ from $U$, we still have a neighbourhood of $Z$, but for which $f$ is invertable. Similarly, by shrinking the support of $f$ around $Z$, eventually $f$ will vanish or become a unit. The localization of $R$ at $(x,y)$ in a sense is the algebraic analog of the ring of germs of $(0, 0)$. However, the completion of $\hat R_\fp$ represents the properties of the variety in far smaller neighborhoods.

	

	

	

	
\end{document} -->