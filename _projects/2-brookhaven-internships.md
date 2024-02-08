---
layout: default
title: "Brookhaven Internship"
---

I have interned on and off at [Brookhaven National Laboratory](https://www.bnl.gov/world/){:target="_blank"} (BNL) since November 2020. During this time, I worked under Dr. An&#382;e Slosar, and Dr. Brett Viren on three seperate projects.

### FRB Detection
I speant several months working on prototype algorithms for real time detection of [fast radio bursts](https://en.wikipedia.org/wiki/Fast_radio_burst){:target="_blank"} (FRB). An implementation of the algorithm ran briefly on Brookhaven's BMX telescope before getting replaced by a new and improved implementation.

### WireCell Toolkit GPU Accelerated FFT Support
The second project I worked on was with Brett Viren. During the fall of 2021, I spent several weeks writting a package for [`WireCell Toolkit`](https://github.com/brettviren/wire-cell-toolkit){:target="_blank"} (WCT) which provided support for GPU-accelerated Discrete Fourier Transforms using NVIDIA's `cuFFT` library. This package has since been merged with WCT.

### DUNE Time-Slice Deghosting 
The [Deep Underground Neutrino Experiment](https://www.dunescience.org/){:target="_blank"} (DUNE) aims to study the properties of [neutrinos](https://www.scientificamerican.com/article/what-is-a-neutrino/) and relies heavely on several [Liquid Argon Time Projection Chambers](https://en.wikipedia.org/wiki/Time_projection_chamber){:target="_blank"} (LArTPC) to do so. 

An LArTPC can be though of as large, paralel-plate capacitor filled with liquid argon. In the capacitor lie three planes of parallel wires, each rotated at a different angle. 

When a neutrino enters the detector, it leave a trail of negatively charged particles. Such particles are pushed by the TPC's magnetic field towards the wire-planes. As these particles near a wire, they induce an electric current in that wire. This process is depicted on the right of the figure below.

![](/assets/tpc-wires.png){:style="max-width: 100%"}

The detector "sess" a projection of the charged particles' positions. The process of reconstructing the electrically charged particles' possitions from the wire-plane waveform is called tomographic reconstruction. A naive tomographic reconstruction would lend many "possible" positions of neutrinos.

When I interned, there were two aproaches to resolve this issue. The first was a series of ad-hoc, combersome heuristics developed over an extended period of time. The second aproach was to use neural networks which were faster, but needed to be trained on inherently biased simulated data.

I was tasked with research new algorithms for performing the tomographic reconstruction using the formality of [this paper](https://arxiv.org/pdf/1806.01261.pdf){:target="_blank"}. See the [project's GitHub repo](https://github.com/brandon-feder/wire-cell-constraint){:target="_blank"} for more information.