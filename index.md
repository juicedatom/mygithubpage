---
layout: home
title: Home
enable_shit: true
---
<img style="float: right;padding:10px" src="/assets/funnyhat.jpg" width="40%">

In 2016, I graduated with a degree in Computer Engineering from [Michigan Technological University](https://www.mtu.edu/) after years of [robotics research](https://scholar.google.com/citations?user=E0nbCrYAAAAJ&hl=en), internships, and spending time [in nature](https://www.google.com/maps/place/Michigan+Technological+University/@47.0892921,-88.6100291,11.82z/data=!4m5!3m4!1s0x4d50c810d2807581:0x80d7ca9457d61ad5!8m2!3d47.1150259!4d-88.5452004)! Since then, I've been working as an engineer and researcher  changing the way that robots see the world.


For the next couple of paragraphs I'll give an overview on my professional career through the lens of sensor fusion.


## Lidars and Monocular Cameras
While in college, I designed and hand-built a data-collection system which used a Hokuyo lidar like [this one](https://acroname.com/store/lidar-scanner-r314-hokuyo-laser4?gclid=EAIaIQobChMIyZGAsYvr-QIVRjizAB2pqQy3EAQYBiABEgL4LfD_BwE) which was designed to be mounted on a drone. It was used to map bridges in the Metro-Detroit Area like [this one](https://mtri.org/mdot_uav.html) under the guidance of [Dr. Timothy C. Havens](https://www.mtu.edu/cs/department/people/faculty/havens/). Here's a picture of the [drone](https://www.mtu.edu/news/2018/12/leave-nothing-up-in-the-air-bridge-inspections-in-the-age-of-drones.html) with the sensor kit I developed on it.


Continuing that work, I added a camera to the same data collection system in order to help our lab test a [camera-lidar](https://asmedigitalcollection.asme.org/dynamicsystems/article-abstract/139/7/071002/395297/Heterogeneous-Multisensor-Fusion-for-Mobile) sensor fusion system for pose estimation. Here's a [picture of it, but it's from 2014, so I look very different.](https://www.flickr.com/photos/michigantechcoe/14477329427)


Following college, I was part of the first intern class at [Uber ATC](https://www.officelovin.com/2017/02/tour-ubers-advanced-technology-center/) (later Uber ATG, and then [bought by Aurora](https://investor.uber.com/news-events/news/press-release-details/2020/Aurora-is-acquiring-Ubers-self-driving-unit-Advanced-Technologies-Group-accelerating-development-of-the-Aurora-Driver/default.aspx)) where we built an end-to-end self-driving system based purely on cameras. Following the internship, I transitioned to full time to continue this work.


After some time at Uber, I joined [Argo AI](https://www.argo.ai/) as one of the original employees. Getting back to my camera-lidar roots, I started there by working with our team to develop C++ onboard infrastructure for everything from out monocular object detector to low-level lidar firmware.


I furthered my mapping work at Argo by working on a team which [patented](https://patents.google.com/patent/US11164369B2/en) a method to develop cm-level precision ground height maps using a [Gaussian Process](http://robotics.caltech.edu/wiki/images/8/8e/GPModelingTerrain.pdf), Poisson Surface Reconstruction, and several other hack. My role in the project was to implement the Gaussian Process piece of the pipeline using the [GPflow](https://github.com/GPflow/GPflow) package.


I then spent a significant amount of my time working with Argo's fantastic [lidar team](https://www.forbes.com/sites/samabuelsamid/2017/10/27/argo-ai-and-ford-double-down-on-lidar-acquire-princeton-lightwave/?sh=6a1555b3410a) to develop algorithms for Argo's custom [Geiger-Mode](https://www.argo.ai/company-news/breakthrough-new-lidar-technology-gives-argo-ai-the-edge-in-autonomous-delivery-and-ride-hail-services/) lidar. Following my infra work, I was promoted and tech-lead a team of engineers to ship Argo's first deep-lidar based object detector. The detector was then deployed in five different cities simultaneously.


## Stereo
Towards the end of my time at Argo I was part of a small team which pushed the state-of-the-art in field of stereo depth estimation by developing a novel approach for deep stereo vision on high-resolution images in real-time. Our work was then published at [CVPR in 2019](https://openaccess.thecvf.com/content_CVPR_2019/papers/Yang_Hierarchical_Deep_Stereo_Matching_on_High-Resolution_Images_CVPR_2019_paper.pdf).

 In addition to my algorithmic work on stereo, I also modified the auto-exposure for our cameras so that the stereo pair would expose at the same time. This was needed to for high-quality stereo correspondences.


## Radar
After a while I transitioned to [Waymo](https://waymo.com/), [formerly the Google Self-Driving Car Project](https://waymo.com/company/), where I use our [imaging radar](https://www.forbes.com/sites/bradtempleton/2021/11/15/waymos-new-imaging-radar-takes-them-through-san-francisco-fog/?sh=d07c3602937f) to build deep radar algorithms for object detection.

I currently lead the radar-trucking perception working group. The group consists of a cross-functional team of engineers across hardware, software, and systems which work through issues involving our current radar, while pushing on designs for the next generation of hardware.  Our working group has successfully launched several deep-radar based object detectors, field of view, and sensor fusion models into production. Our group has also been able to generalize several of these models across newer radars as they come online.


## In General...
Although I've had many other jobs and wonderful experiences throughout my career, I now consider myself to be a robotics engineer with a specialization in building machine learning algorithms for custom-built sensors. Ultimately, just like doing cool stuff and always happy to chat! If you want to learn more about me please use one of the links below, or just check out my [CV](/assets/ManelaCV.pdf) for more information.
