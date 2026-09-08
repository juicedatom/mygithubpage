---
layout: page
title: Portfolio
permalink: /portfolio/
---

## Autonomous Heavy Machinery

As a founding engineer at [Bedrock Robotics](https://www.bedrockrobotics.com/), I lead the behavior ML effort &mdash; training, evaluating, and iterating on end-to-end policies that operate heavy machinery on real construction sites.

**Fully Autonomous Excavator Run** &mdash; A [nearly hour-long autonomous excavator run](https://www.youtube.com/watch?v=ksGSPGw9RZY) completed with zero human interventions.

<div style="position:relative;padding-bottom:56.25%;height:0;overflow:hidden;max-width:100%;margin:1em 0;clear:both">
  <iframe style="position:absolute;top:0;left:0;width:100%;height:100%;border:0"
          src="https://www.youtube-nocookie.com/embed/ksGSPGw9RZY"
          title="Fully Autonomous Excavator Run"
          loading="lazy"
          allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
          allowfullscreen></iframe>
</div>

**Autonomy Deployed Across Three Sites** &mdash; [Bloomberg](https://www.bloomberg.com/news/videos/2026-08-17/bedrock-brings-autonomous-driving-to-construction-video) on how we brought autonomous driving to construction, deploying autonomously to three sites.

## Autonomous Vehicle Perception

<img style="float: right;padding:10px" src="/assets/waymo-radar.gif" width="40%">

**CramNet: Camera-Radar Fusion with Ray-Constrained Cross-Attention for Robust 3D Object Detection** &mdash; Co-authored this camera-radar early fusion object detector, published at [ECCV 2022](https://arxiv.org/pdf/2210.09267.pdf). It paved the way for long-range, principled, and efficient camera-radar fusion using dense imagery that is robust to various error modes.

**Hierarchical Deep Stereo Matching on High-Resolution Images** &mdash; Designed and implemented a novel approach to deep stereo vision on high-resolution images in real time, published at [CVPR 2019](https://openaccess.thecvf.com/content_CVPR_2019/papers/Yang_Hierarchical_Deep_Stereo_Matching_on_High-Resolution_Images_CVPR_2019_paper.pdf).

**cm-Level Ground Height Maps** &mdash; [Patented](https://patents.google.com/patent/US11164369B2/en) a method for cm-level precision ground height maps using a [Gaussian Process](http://robotics.caltech.edu/wiki/images/8/8e/GPModelingTerrain.pdf), Poisson Surface Reconstruction, and several other hacks. I implemented the Gaussian Process stage of the pipeline with [GPflow](https://github.com/GPflow/GPflow).


## Misc Sensing Applications

**Drone-Mounted Lidar Mapping** &mdash; Designed and hand-built a data-collection system around a Hokuyo scanning lidar for drone deployment, used to map bridges in the Metro-Detroit area like [this one](https://mtri.org/mdot_uav.html) under the guidance of [Dr. Timothy C. Havens](https://www.mtu.edu/cs/department/people/faculty/havens/). The [drone](https://www.mtu.edu/news/2018/12/leave-nothing-up-in-the-air-bridge-inspections-in-the-age-of-drones.html) flew the sensor kit I developed.

**Camera-Lidar Pose Estimation** &mdash; Added a camera to the same collection system to test a [camera-lidar](https://asmedigitalcollection.asme.org/dynamicsystems/article-abstract/139/7/071002/395297/Heterogeneous-Multisensor-Fusion-for-Mobile) sensor fusion system for pose estimation. Additional documentation and imagery [here](https://www.flickr.com/photos/michigantechcoe/14477329427).

**Railroad Wheel Contamination Detection** &mdash; Built hump-yard sensing for detecting contaminated railroad wheels as undergraduate research, written up in a [National University Rail Center research brief](http://www.nurailcenter.org/tech-and-pub/doc/briefs/Hump%20Sensors%20NURailResearchBrief.pdf).

## Open Source

**Qiskit** &mdash; Fixed pulse visualization in IBM's quantum computing SDK to respect the user's matplotlib `rcParams` rather than overriding them ([Qiskit/qiskit#4470](https://github.com/Qiskit/qiskit/pull/4470), merged 2020).

**Minima** &mdash; Added Google Scholar to the built-in social links of Jekyll's default theme ([jekyll/minima#673](https://github.com/jekyll/minima/pull/673), merged 2022). The scholar icon in this site's own footer is that contribution.
