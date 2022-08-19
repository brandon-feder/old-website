---
layout: default
title: "Brookhaven Internships"
category: starred
---

I have interned on and off at [Brookhaven National Laboratory](https://www.bnl.gov/world/){:target="_blank"} (BNL) since November 2020. Since then, I have worked under An&#382;e Slosar then Brett Viren on three seperate projects.

### FRB Detection
I speant several months working on prototype algorithms for real time detection of [fast radio bursts](https://en.wikipedia.org/wiki/Fast_radio_burst){:target="_blank"} (FRB). An implementation of the algorithm did run briefly on Brookhaven's BMX telescope, but has not been run recently due to ongoing work on the telescope and plans to build a larger, more permanent replacement.

### WireCell Toolkit GPU Accelerated FFT Support
The second project I worked on was with Brett Viren. During the fall of 2021, I spent several weeks writting a package for the [`WireCell Toolkit`](https://github.com/brettviren/wire-cell-toolkit){:target="_blank"} (WCT) which provides support for GPU-accelerated Discrete Fourier Transforms using NVIDIA's `cuFFT` package. This package has since been merged with WCT and is a permanent part of the software.

### DUNE Time-Slice Deghosting 
The [Deep Underground Neutrino Experiment](https://www.dunescience.org/){:target="_blank"} (DUNE) is an international experiment with the goal of learning more about [neutrinos](https://www.scientificamerican.com/article/what-is-a-neutrino/). DUNE uses [Liquid Argon Time Projection Chambers](https://en.wikipedia.org/wiki/Time_projection_chamber){:target="_blank"} (LArTPC) to indirecrlt measure these neutrinos.

Very very simply, LArTPCs are a very large and expensive paralel-plate capacitor filled with liquid argon. In between the capacitor's two plates lie three planes of parallel wires each of witch are rotated at different angles. In the figure below, these planes of wires are labeled U, V, and Y in the below figure. When a neutrino enters the detector, it may interact with the other matter in which case many electically charged particles and photons will be released. These photons are not effected by the capacitor's internal electric field and are eventually detected by small light-sensitive diodes around the outside of the capacitor. The electically charged particles are effected by the electic field and drift at constant speed towards the planes of wires. As these particles near a wire, they induce an electric current in the wire. The induced currents from the V and Y wire planes are depicted on the right of the figure below. Using information from the photons and charged particles, it is possible to reconstruct the path of the neutrino.

![](/assets/tpc-wires.png){:style="max-width: 100%"}

The process of reconstructing the electrically charged particles possition from the wire plane waveform is a process called tomographic reconstruction. Unfortunetly, there is amiguity about the position of these charged particles. It is not possible to know for sure where a charged particle was from the current it induced on a wire.

Currently, there are two aproaches to resolve this issue. The first, and the method currently used by the LArTPC community, is a series of ad-hoc algorithms and programming teqniques that have been developed over an extended period of time. Many of these algorithms are slower then needed.

The second aproach is to use neural networks which is faster, but needs to be trained on biased simulated data.

I was tasked with creating a new algorithm for performing the tomographic reconstruction. First, I build a hetrogenous graph to represent the relationship between all the data. Then, using the formality of [this paper](https://arxiv.org/pdf/1806.01261.pdf), I build constraint functions that describe how information should be propogated throughout the graph. This teqnique is fast, scalable, versatile, and easily parralellizable. More details about the implementation can be found on the [projects GitHub repo](https://github.com/brandon-feder/wire-cell-constraint).