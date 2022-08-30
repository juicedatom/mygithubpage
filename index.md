---
layout: home
title: Home
enable_shit: true
---
<img style="float: right;" src="/funnyhat.jpg" border="2" width="40%">

In 2016, I graduated with a degree in Computer Engineering from [Michigan Technological University](https://www.mtu.edu/) after years of [robotics research](https://scholar.google.com/citations?user=E0nbCrYAAAAJ&hl=en), internships, and spending time [in nature](https://www.google.com/maps/place/Michigan+Technological+University/@47.0892921,-88.6100291,11.82z/data=!4m5!3m4!1s0x4d50c810d2807581:0x80d7ca9457d61ad5!8m2!3d47.1150259!4d-88.5452004)! Since then I've been working as a Perception Engineer and researcher by changing the way that robots see the world.


Since my work is mainly focused around building algorithms for new and exciting sensors, I'll showcase that here.


## Lidars and Monocular Cameras
While in college, I designed and hand-built a data-collection system which used a Hokuyo lidar like [this one](https://acroname.com/store/lidar-scanner-r314-hokuyo-laser4?gclid=EAIaIQobChMIyZGAsYvr-QIVRjizAB2pqQy3EAQYBiABEgL4LfD_BwE) which was designed to be mounted on a drone. It was used to map bridges in the Metro-Detroit Area like [this one](https://mtri.org/mdot_uav.html) under the guidance of [Dr. Timothy C. Havens](https://www.mtu.edu/cs/department/people/faculty/havens/). Here's a picture of the [drone](https://www.mtu.edu/news/2018/12/leave-nothing-up-in-the-air-bridge-inspections-in-the-age-of-drones.html) with the sensor kit I developed on it.


Continuing that work, I added a camera to the same data collection system in order to develop a [camera-lidar](https://asmedigitalcollection.asme.org/dynamicsystems/article-abstract/139/7/071002/395297/Heterogeneous-Multisensor-Fusion-for-Mobile) sensor fusion system for pose estimation. Here's a [picture of it, but it's from 2014 so I look very different.](https://www.flickr.com/photos/michigantechcoe/14477329427)


Following college, I was part of the first intern class at [Uber ATC](https://www.officelovin.com/2017/02/tour-ubers-advanced-technology-center/) (later Uber ATG, and then [bought by Aurora](https://investor.uber.com/news-events/news/press-release-details/2020/Aurora-is-acquiring-Ubers-self-driving-unit-Advanced-Technologies-Group-accelerating-development-of-the-Aurora-Driver/default.aspx)) where I built end-to-end self-driving algorithms based purely on cameras. Following my internship I transitioned to full time to continue this work.


After some time at Uber, I joined [Argo AI](https://www.argo.ai/) as one of the original employees. Getting back to my camera-lidar roots, I started there by developed all the C++ onboard infrastructure for not only our monocular object detector, but also some work on lidar firmware.


I furthered my mapping work at Argo by [patenting](https://patents.google.com/patent/US11164369B2/en) a method to develop cm-level precision ground height maps using [Gaussian Processes](https://en.wikipedia.org/wiki/Gaussian_process#:~:text=In%20probability%20theory%20and%20statistics,of%20them%20is%20normally%20distributed.).


I then spent a significant amount of my time helping develop firmware and algorithms for Argo's custom [Geiger-Mode](https://www.argo.ai/company-news/breakthrough-new-lidar-technology-gives-argo-ai-the-edge-in-autonomous-delivery-and-ride-hail-services/) lidar. Being one of the original members of the team, I shipped their original deep-lidar based object detector which was deployed in five different cities simultaneously.


## Stereo
Towards the end of my time at Argo I also pushed the state-of-the-art in field of stereo depth estimation by developing a novel approach for deep stereo vision on high-resolution images in real-time. Our work was then published at [CVPR in 2019](https://openaccess.thecvf.com/content_CVPR_2019/papers/Yang_Hierarchical_Deep_Stereo_Matching_on_High-Resolution_Images_CVPR_2019_paper.pdf).

 In addition to my algorithmic work on stereo, I also modified the auto-exposure for our cameras so that the stereo pair would expose at the same time. This was needed to for high-quality stereo correspondences.


## Radar
After a while I transitioned to [Waymo](https://waymo.com/), [formerly the Google Self-Driving Car Project](https://waymo.com/company/), where I use our incredible [imaging radar](https://www.forbes.com/sites/bradtempleton/2021/11/15/waymos-new-imaging-radar-takes-them-through-san-francisco-fog/?sh=d07c3602937f) to build deep radar algorithms for object detection. I also shipped several versions of these models directly onto our [autonomous truck](https://blog.waymo.com/2021/12/designed-to-deliver.html).


## In General...
Although I've had many other jobs and wonderful experiences throughout my career, I now consider myself to be a robotics engineer with a specialization in building machine learning algorithms for custom-built sensors. Ultimately, I'm a Perception Engineer and always happy to chat about anything! If you want to learn more about me please use one of the links below, or just check out my [CV](/ManelaCV.pdf) for more information.
