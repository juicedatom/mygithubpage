---
layout: home
title: Home
enable_shit: true
---
<img style="float: right;padding:10px" src="/assets/funnyhat.jpg" width="30%">

In 2016, I graduated with a degree in Computer Engineering from [Michigan Technological University](https://www.mtu.edu/) after years of [robotics research](https://scholar.google.com/citations?user=E0nbCrYAAAAJ&hl=en), internships, and exploring [the Upper Peninsula](https://www.google.com/maps/place/Michigan+Technological+University/@47.0892921,-88.6100291,11.82z/data=!4m5!3m4!1s0x4d50c810d2807581:0x80d7ca9457d61ad5!8m2!3d47.1150259!4d-88.5452004). Since then, I have been working as an engineer and researcher advancing robotic perception systems.


The following sections provide an overview of my professional career through the lens of sensor fusion.


## Camera-Lidar Fusion
While in college, I designed and hand-built a data-collection system which used a Hokuyo lidar like [this one](https://acroname.com/store/lidar-scanner-r314-hokuyo-laser4?gclid=EAIaIQobChMIyZGAsYvr-QIVRjizAB2pqQy3EAQYBiABEgL4LfD_BwE) which was designed to be mounted on a drone. It was used to map bridges in the Metro-Detroit Area like [this one](https://mtri.org/mdot_uav.html) under the guidance of [Dr. Timothy C. Havens](https://www.mtu.edu/cs/department/people/faculty/havens/). The [drone](https://www.mtu.edu/news/2018/12/leave-nothing-up-in-the-air-bridge-inspections-in-the-age-of-drones.html) was equipped with the sensor kit I developed.


Continuing that work, I added a camera to the same data collection system in order to help our lab test a [camera-lidar](https://asmedigitalcollection.asme.org/dynamicsystems/article-abstract/139/7/071002/395297/Heterogeneous-Multisensor-Fusion-for-Mobile) sensor fusion system for pose estimation. Additional documentation and imagery from this project can be found [here](https://www.flickr.com/photos/michigantechcoe/14477329427).


Following college, I was part of the first intern class at [Uber ATC](https://www.officelovin.com/2017/02/tour-ubers-advanced-technology-center/) (later Uber ATG, and then [bought by Aurora](https://investor.uber.com/news-events/news/press-release-details/2020/Aurora-is-acquiring-Ubers-self-driving-unit-Advanced-Technologies-Group-accelerating-development-of-the-Aurora-Driver/default.aspx)) where we built an end-to-end self-driving system based purely on cameras. Following the internship, I transitioned to full time to continue this work.


After some time at Uber, I joined [Argo AI](https://www.argo.ai/) as one of the original employees. Getting back to my camera-lidar roots, I started there by working with our team to develop C++ onboard infrastructure for everything from our monocular object detector to low-level lidar firmware.


I furthered my mapping work at Argo by working on a team which [patented](https://patents.google.com/patent/US11164369B2/en) a method to develop cm-level precision ground height maps using a [Gaussian Process](http://robotics.caltech.edu/wiki/images/8/8e/GPModelingTerrain.pdf), Poisson Surface Reconstruction, and several other hacks. My role in the project was to implement the Gaussian Process piece of the pipeline using the [GPflow](https://github.com/GPflow/GPflow) package.


<img style="float: left;padding:10px" src="/assets/argo-lidar.gif" width="40%">


I then spent a significant amount of my time working with Argo's fantastic [lidar team](https://www.forbes.com/sites/samabuelsamid/2017/10/27/argo-ai-and-ford-double-down-on-lidar-acquire-princeton-lightwave/?sh=6a1555b3410a) to develop algorithms for Argo's custom [Geiger-Mode](https://www.argo.ai/company-news/breakthrough-new-lidar-technology-gives-argo-ai-the-edge-in-autonomous-delivery-and-ride-hail-services/) lidar. Following my infra work, I was promoted and became a tech lead to team of engineers to ship Argo's first deep-lidar based object detector. We successfully launched the detector in five different cities simultaneously.


## Stereo
Towards the end of my time at Argo I was part of a small team which pushed the state-of-the-art in the field of stereo depth estimation by developing a novel approach for deep stereo vision on high-resolution images in real-time. Our work was published at [CVPR in 2019](https://openaccess.thecvf.com/content_CVPR_2019/papers/Yang_Hierarchical_Deep_Stereo_Matching_on_High-Resolution_Images_CVPR_2019_paper.pdf).

 In addition to my algorithmic work on stereo, I also modified the auto-exposure for our cameras so that the stereo pair would expose at the same time. This was needed for high-quality stereo correspondences.


## Radar
After a while I transitioned to [Waymo](https://waymo.com/), [formerly the Google Self-Driving Car Project](https://waymo.com/company/), where I use our [imaging radar](https://www.forbes.com/sites/bradtempleton/2021/11/15/waymos-new-imaging-radar-takes-them-through-san-francisco-fog/?sh=d07c3602937f) to build deep radar algorithms for object detection.


<img style="float: right;padding:10px" src="/assets/waymo-radar.gif" width="40%">


I currently lead the radar-trucking perception working group. The group consists of a cross-functional team of engineers across hardware, software, and systems which work through issues involving our current radar, while pushing on designs for the next generation of hardware.  Our working group has successfully launched several deep-radar based object detectors, field of view, and sensor fusion models into production. Our group has also been able to generalize several of these models across newer radars as they come online.


## Camera-Radar Fusion
Throwing together all of my previous work, I was part of publishing [CramNet](https://arxiv.org/pdf/2210.09267.pdf), a novel camera-radar early fusion object detector at ECCV '22. Our work helped to pave the way for long-range, principled, and efficient camera-radar fusion using dense imagery which is robust to various error modes.


## In General...
Throughout my career, I have gained diverse experience across multiple organizations and domains. I consider myself to be a robotics engineer with a specialization in building machine learning algorithms for custom-built sensors. I am passionate about advancing perception technology and welcome opportunities to discuss research and collaboration. For more information about my background and experience, please refer to the links below or view my <a class="page-link" href="{{ site.cv_url }}" target="_blank">Resume</a>.
