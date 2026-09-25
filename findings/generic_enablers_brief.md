# Access to GNSS-Denied Navigation and On-Device Machine Vision as Generic Enabling Technologies

**Threat-research brief — 25 September 2026.** Scope: accessibility to non-state actors of (a) navigation without GPS/GNSS and (b) on-device/edge AI for machine vision, treated as generic enabling technologies. Non-enabling by design: no code, no training recipes, no targeting procedures.

**Method note.** `web_search` failed repeatedly this session ("unprocessable response body"); evidence below was gathered by direct `web_fetch`/`curl` of primary sources, the GitHub REST API (stars, licences, last-push dates), and `tools/news.sh`. Publisher URLs for a few September 2026 news items could not be resolved past Google News redirects; these are flagged and rated lower confidence.

**Bottom line.** Both capability families are commodity: hardware is retail, models are open-weight, datasets are downloadable, flight stacks are mature and free — none of it gated by cost, licence or scarcity. The binding constraints are integration, calibration, power/thermal budgets on small airframes, and the gap between a lab demonstration and reliable field behaviour — not access. Military packaging is accelerating the spillover, but it is largely packaging: the underlying modules were civilian first.

---

## 1. GNSS-denied / GPS-denied navigation for small UAS

**What exists — open source (high confidence).** ArduPilot's official *Non-GPS Navigation* page is the clearest public inventory: VIO cameras (Intel RealSense T265, Luxonis OAK-D), external position beacons (MarvelMind, Nooploop, Pozyx), motion-capture systems (Vicon, OptiTrack, Nokov), optical flow, ModalAI VOXL/VOXL2, and ROS with Google Cartographer SLAM (developer-only). Once any source is enabled, "all autonomous and semi-autonomous modes" work as with GPS. ArduPilot is GPLv3; the wiki documents ArduPilot 4.7 persistent EKF-origin storage, which lets a vehicle restore a saved origin and fly position modes indoors with no GPS at all. Crucially, the same page states plainly that low-cost autopilot IMUs "drift too quickly" to estimate position alone and that an H7-class autopilot is recommended — the firmware project itself names the core limitation. PX4's *Computer Vision* documentation mirrors this: optical flow, MoCap, VIO, collision prevention, precision landing, terrain following, and a documented **Vision Target Estimator**.

**Optical flow** is the cheapest GNSS substitute and is fully commoditised: ArduPilot documents at least a dozen interoperable sensors (ARK Flow / ARK Flow MR, HereFlow, Holybro H-Flow, Mateksys 3901-L0X, MicoAir MTF-01, PX4FLOW, OpenMV, CORVON, UPixels, MechFlow), several costing tens of dollars. Optical flow gives velocity, not position, and degrades over low-texture or water surfaces.

**Visual-inertial odometry and SLAM** are open and widely forked: VINS-Fusion (GPL-3.0, ~4.7k stars, last push May 2024), ORB-SLAM3 (GPL-3.0, ~9.1k stars, last push July 2024), OpenVINS (GPL-3.0, ~3.1k stars, pushed November 2025; explicitly built for research and calibrated on EuRoC/UZH-FPV datasets), and maplab (Apache-2.0). All assume ROS and a calibrated camera–IMU rig. **Visual teach-and-repeat / map-matching** exists largely as research code plus commercial products rather than a turnkey open module; terrain-relative navigation is documented in ArduPilot/PX4 as *terrain following* (radar/lidar/DEM-assisted height hold) rather than full terrain-referenced position fixing.

**Commercial modules (medium confidence).** ModalAI sells VOXL 2 — Qualcomm QRB5165, 8 GB LPDDR5, 15 TOPS, 16 g — as both a companion computer and a PX4/ArduPilot flight controller, with a "Blue UAS Framework" designation; its development drones start around $3,200. Intel discontinued the RealSense T265 (the most-copied non-GPS recipe). Luxonis OAK-D remains a low-cost stereo/depth option.

**Who can get it.** Any buyer. Firmware, source and docs are free downloads; sensors are retail. A motivated group with ROS/C++ skills and a test field can assemble a GNSS-denied position solution in weeks to months.

**Remaining barriers.** Calibration and time-sync of camera/IMU; scale drift over long flights; lighting and motion-blur sensitivity; the need for a manually set EKF origin (unless ArduPilot 4.7 origin storage is used); and, per ArduPilot's own warning, cheap IMUs that cannot carry position alone. **Lab vs field:** indoor VIO loops on a bench or in a motion-capture room are routine; reliable multi-minute outdoor GNSS-denied flight over featureless or repetitive terrain remains genuinely hard.

**Confidence:** high on availability and licences (primary docs + GitHub API); medium on commercial pricing.

---

## 2. Hardware cost curve for edge AI

**What exists (medium confidence on street prices).**
- **NVIDIA Jetson Orin Nano Super:** 67 sparse INT8 TOPS; developer kit cut to **$249** (from $499) in December 2024; modules $199 (4 GB) / $299 (8 GB) at 1k units; 7–25 W. Orin NX 8/16 GB reach 117–157 sparse INT8 TOPS. A **Jetson Orin Nano 2** was announced 25 August 2026 claiming roughly double the inference performance for entry-level robotics. The Orin line runs full CUDA/TensorRT, which is why it dominates hobby and small-UAS perception. NVIDIA states the product is **not export-controlled**.
- **Raspberry Pi 5 + AI Kit:** **$70**, Hailo-8L at **13 TOPS**, ~1.5 W; a follow-on **AI HAT+ 2** (Hailo-10 class, generative AI on Pi 5) was announced January 2026. This is the single biggest price/performance shift: a usable vision accelerator for the price of a mid-range FPV motor set.
- **Google Coral:** the legacy Edge TPU is ~**4 TOPS** (USB Accelerator historically ~$60). As of 2026 `coral.ai` foregrounds the **Synaptics Coralboard**, indicating Google has handed the platform to a silicon partner — treat Coral as legacy and the Hailo/Jetson route as current.
- **Qualcomm QRB5165 / RB5-class:** **15 TOPS**, as used in ModalAI VOXL 2 and the Qualcomm Flight RB5 5G platform.
- **Rockchip RK3588:** **6 TOPS** INT4/INT8/INT16/FP16 NPU (e.g. Radxa Rock 5B), typically on boards costing well under $200.

**Caveat that matters for assessment:** TOPS is not comparable across vendors (INT8 sparse vs dense, GPU vs NPU vs DSP). A 13 TOPS Hailo-8L often beats a nominally higher NPU on real detection throughput because of toolchain maturity. **Who can get it:** fully retail (Amazon, DigiKey, SparkFun, Seeed, Radxa). **Barriers:** none on access; thermal management, power budget and vendor-toolchain maturity only.

**Evidence anchor:** the Bulletin investigator bought "the NVIDIA microcomputer" for **$250 on Amazon** after a Ukrainian general linked that class of board to autonomous Shahed behaviour. **Confidence:** high (NVIDIA, Raspberry Pi/CNX, Radxa, ModalAI primary pages); price drift is the main uncertainty.

---

## 3. Open models and datasets for detection and tracking from a moving camera

**Detection.** The Ultralytics repository (YOLO family through YOLO26/27; ~62k stars, actively pushed September 2026) is **AGPL-3.0** with a paid commercial licence — a real compliance tripwire for anyone shipping a closed product, and the most common licence problem in this space. yolov5 (~58k stars, AGPL-3.0), AlexeyAB/darknet (~22k stars), and MMDetection (~33k stars, Apache-2.0) are the other pillars. **RT-DETR** (Apache-2.0, ~5.6k stars, actively maintained) is the permissively licensed real-time transformer alternative. **Ease of use is genuinely one-line** via `pip`, model zoos and export paths to ONNX/TensorRT.

**Tracking.** ByteTrack (MIT, ~6.7k stars) and DeepSORT (GPL-3.0, ~6.2k stars) are the standard multi-object trackers; ByteTrack's MIT licence makes it the default for permissive stacks. Both are pure post-processing on detections and run cheaply on edge hardware.

**Datasets.** COCO (CC BY 4.0 annotations) and Open Images (CC BY 4.0 images/annotations) cover people and vehicles at ground level. Aerial/small-object coverage comes from VisDrone (~2.6k stars; no SPDX licence declared — academic-use assumptions apply), DOTA, xView, UA-DETRAC (vehicles), and **Anti-UAV** (MIT, ~855 stars) for drone detection. Hugging Face hosts large, searchable hubs of detection models and datasets with permissive and restricted licences mixed together.

**Assessment.** A motivated actor can obtain a working person/vehicle detector and tracker today at zero cost and deploy it to a $70–$250 accelerator. Fine-tuning to a novel target class requires labelled data and GPU time — accessible via rented cloud compute but the main remaining skill step.

**Confidence:** high on licences/stars/activity (GitHub API, primary repos); medium on downstream field performance.

---

## 4. Open autonomy stacks, and what it takes to fly GNSS-free

**What exists.** PX4 (BSD-3, ~12.7k stars, pushed daily) and ArduPilot (GPL-3.0, ~15.9k stars, pushed daily) are the two mature autopilots; both document offboard/guided navigation, companion-computer interfaces and non-GPS sources. MAVSDK (BSD-3) and QGroundControl (Apache-2.0) provide the API and GCS layers. Gazebo (`gz-sim`, Apache-2.0) with PX4 SITL gives a full software-in-the-loop environment. Research-grade agile flight stacks include UZH's **Agilicious** (~650 stars, last code push 2023, custom open licence) and the older **rpg_quadrotor_control** (Swift lineage, ~730 stars, 2021) — powerful but effectively frozen, i.e. academic artefacts rather than maintained products. Community examples such as `px4_vision_autonomy` and `PX4-ROS2-Gazebo-YOLOv8` show detection integrated with PX4 SITL.

**Cost and expertise.** A small quad with autopilot, RC, telemetry, camera and a Pi/Jetson companion sits roughly in the **$300–$1,500** range; a VOXL 2 developer kit is ~$1,400 and an integrated autonomy drone (ModalAI Starling 2 Max) from ~$3,200. The scarce input is **person-time**: ROS 2/PX4 offboard fluency, camera–IMU calibration, control-loop tuning, and repeated flight testing.

**Lab vs field.** Following a visual waypoint or target in simulation or an open field is a solved, well-documented student project. Doing it reliably in wind, over varied terrain, with a moving target and imperfect detection, without GNSS, consumes months. The Bulletin experiment (below) is direct evidence: a capable journalist with chatbot assistance, retail hardware and months of effort **failed** to produce a functioning autonomous weapon. **Confidence:** high on repos/licences/docs; medium on cost ranges.

---

## 5. Maps, imagery and 3D terrain

**Free.** Copernicus DEM GLO-30/GLO-90 is globally available under a free licence with **<4 m absolute vertical accuracy** (90% linear error) and <2 m relative accuracy below 20% slope — sufficient for terrain-relative route planning; the 10 m EEA-10 European instance is access-restricted. NASA **SRTM** (30 m, near-global), ASTER GDEM, ALOS World 3D-30m, Sentinel-2 (10 m optical), Landsat, USGS 3DEP (1 m, US), OpenTopography, and **OpenStreetMap** (ODbL) complete a fully free global baseline.

**Commercial.** Maxar and Planet (sub-metre and daily-revisit respectively), Airbus, Google/Bing imagery and Mapbox offer higher resolution and fresher revisits.

**Use and limits.** These support terrain-relative navigation, map-matching and route following; visual teach-and-repeat needs a prior map or pre-flown route. Practical issues: **currency** (new construction, vegetation), **geo-registration drift** of a few metres, and offline storage. Adequate for route navigation, not for precision. **Confidence:** high on free data; medium on commercial pricing.

---

## 6. Is the skill barrier falling measurably?

**Yes for components, models and tooling; not yet for end-to-end autonomy.** Evidence:
- **Community scale:** ArduPilot ~15.9k stars / ~21.4k forks; PX4 ~12.7k stars / ~16.1k forks; Ultralytics ~62k stars; MMDetection ~33k; ORB-SLAM3 ~9.1k. These are large, active pools of reusable code and answered questions.
- **Documentation quality:** ArduPilot and PX4 wikis are detailed, versioned and task-oriented, including custom-firmware builders and Lua scripting (low-code) for behaviour changes. MAVSDK and QGC lower the entry point further.
- **Model zoos and hubs:** Ultralytics, Hailo and NVIDIA publish ready-to-run models; Hugging Face aggregates detection models and datasets. Raspberry Pi ships AI kits with vendor tutorials.
- **Residual barrier:** the August 2026 Bulletin experiment is the cleanest natural test — a motivated non-specialist with AI assistance, retail hardware and months of time got components working but no functioning weapon. Russia's V2U took a state programme; Ukraine's modular AI packages came from a defence-industrial ecosystem.

**Assessment:** the *knowledge* barrier has fallen sharply (2023–2026); the *integration and validation* barrier has fallen much less. **Confidence:** high on proxies; medium on the causal claim.

---

## 7. Countervailing barriers

- **Compute/power/weight.** Orin Nano draws 7–25 W; a Hailo-8L ~1.5 W but still needs a host. On a sub-250 g airframe, companion computer + camera + cooling is a large fraction of all-up weight and endurance.
- **Thermal.** Sealed or insulated airframes in summer heat cause throttling and brownouts; this is a field failure mode, not a lab one.
- **Calibration and robustness.** Camera–IMU extrinsics, time synchronisation, rolling shutter, vibration and lens distortion must be handled; OpenVINS ships calibration tooling precisely because it is non-trivial.
- **Latency.** Detection → tracking → control must close at high rate; encoding, inference and transport latency degrade tracking of fast or manoeuvring targets.
- **Recognition in clutter.** Occlusion, decoys, camouflage, shadows and illumination change cause false positives/negatives; CSIS states that "no one has fielded true end-to-end edge autonomy," while narrow automatic target recognition and navigation assistance are routine.
- **Test and evaluation.** Sim-to-real gap, small and biased datasets, and the cost of flight hours. The Bulletin's failure to notice a mis-wired connection is a homely illustration of why bench success ≠ field reliability.
- **Licensing.** AGPL-3.0 on the dominant YOLO stack is a genuine deployment constraint for closed products.

---

## 8. Military packaging and civilian spillover

**Direct evidence of deliberate packaging (high confidence on the policy sources).** The CSIS brief *Defining Autonomy* (10 June 2026) reports that NSPM-11 (5 June 2026) directed an update to DoD Directive 3000.09 within 90 days and annual review thereafter; that Russia's V2U is the closest thing to fielded end-to-end edge autonomy; that Ukraine fields ~400 drone types and thousands of sorties daily; and that the Pentagon's autonomy vehicle (DAWG) grew from a $225M budget to a ~$54B FY2027 request. CSIS's central argument — that autonomy lives in software, not airframes — is itself evidence that the enabling layer is being institutionalised.

**Fielded use (medium confidence — single/aggregated sources).** The Conversation (2026) describes Russian V2U drones with a small NVIDIA computer; late-2025 variants reportedly lacking operator-control comms; Ukrainian modular AI packages tracking targets over the final ~500 m; and the Zaporizhzhia gas-station strike that killed three civilians, where operators chose the target area but onboard software picked the final aim point. NYT (24 August 2026) reported a drone that killed three Ukrainians while "guided entirely by A.I." Tom's Hardware (20 September 2026) reported a Swedish startup's NATO strike drone using a **Jetson Orin Nano**, a small AI model, "no human input and zero external comms." Ukrainian military intelligence alleged in August 2026 that a Jetson Orin module appeared in Russia's S-71 Monochrome cruise missile; NVIDIA stated the product is not export-controlled and is not sold in Russia. DARPA's ACE programme has completed, with an AI-controlled F-16 flown in 2026.

**Civilian spillover.** ModalAI sells Blue-UAS-cleared FPV hardware and VIO companion computers commercially; Endee Labs announced a GPS-denied visual navigation system for UAVs and Anello a gyroscope-on-chip for GNSS-denied navigation (both July 2026). These are the same underlying capabilities in commercial packaging.

**The Bulletin assessment requested.** Matt Smith's *AI helped me (almost) build a killer drone* (13 August 2026) is the most useful accessibility datapoint in this brief. He found the hardware trivially purchasable ($250 NVIDIA board on Amazon), found chatbot guardrails partially evadable, and concluded that "the creation of an autonomous weapon with equipment easily available to the public seems possible, but the process … was more difficult and stranger than expected." He ultimately failed. The article also notes that mainstream military systems (General Atomics, Anduril) deliberately retain a human in the loop, i.e. the gap between accessible components and a reliable autonomous system is currently bridged mainly by state and prime-contractor engineering.

**Overall judgement.** The enabling technologies are accessible now and getting cheaper; weapons-grade *reliable* autonomy is not yet a garage product, but the components are no longer the constraint. The realistic near-term non-state threat is **semi-autonomous** use — GNSS-denied route navigation, terminal-phase target tracking, jam-resistant guidance — assembled from open stacks, rather than fully autonomous target selection. **Confidence:** medium-high overall; low on individual 2026 weapons-attribution claims.

---

## Source URLs

**Navigation / autonomy**
1. https://ardupilot.org/copter/docs/common-non-gps-navigation-landing-page.html
2. https://ardupilot.org/copter/docs/common-optical-flow-sensors-landingpage.html
3. https://docs.px4.io/main/en/computer_vision/
4. https://github.com/HKUST-Aerial-Robotics/VINS-Fusion
5. https://github.com/UZ-SLAMLab/ORB_SLAM3
6. https://github.com/rpng/open_vins · https://docs.openvins.com/
7. https://github.com/ethz-asl/maplab
8. https://github.com/PX4/PX4-Autopilot · https://github.com/ArduPilot/ardupilot
9. https://github.com/mavlink/MAVSDK · https://github.com/mavlink/qgroundcontrol
10. https://github.com/gazebosim/gz-sim
11. https://github.com/uzh-rpg/agilicious · https://agilicious.readthedocs.io/
12. https://github.com/uzh-rpg/rpg_quadrotor_control
13. https://github.com/Tinny-Robot/px4_vision_autonomy
14. https://github.com/monemati/PX4-ROS2-Gazebo-YOLOv8
15. https://www.modalai.com/products/voxl-2 · https://www.modalai.com/pages/qualcomm-flight-rb5-5g-platform

**Edge hardware**
16. https://www.nvidia.com/en-us/autonomous-machines/embedded-systems/jetson-orin/nano-super-developer-kit/
17. https://www.nvidia.com/en-us/autonomous-machines/embedded-systems/jetson-orin/
18. https://en.wikipedia.org/wiki/Nvidia_Jetson (spec tables; S-71 allegation)
19. https://hailo.ai/products/ai-accelerators/hailo-8l-ai-accelerator-for-ai-light-applications/
20. https://cnx-software.com/2024/06/04/70-raspberry-pi-ai-kit-combines-official-m-2-hat-with-hailo-8l-ai-accelerator/
21. https://radxa.com/products/rock5/5b/
22. https://developers.google.com/coral · https://developers.google.com/coral/products

**Models / datasets**
23. https://github.com/ultralytics/ultralytics · https://github.com/ultralytics/yolov5
24. https://github.com/lyuwenyu/RT-DETR
25. https://github.com/FoundationVision/ByteTrack · https://github.com/nwojke/deep_sort
26. https://github.com/open-mmlab/mmdetection · https://github.com/AlexeyAB/darknet
27. https://github.com/VisDrone/VisDrone-Dataset
28. https://github.com/ZhaoJ9014/Anti-UAV
29. https://captain-whu.github.io/DOTA/ · http://xviewdataset.org/
30. https://cocodataset.org/ · https://storage.googleapis.com/openimages/web/index.html
31. https://huggingface.co/models · https://huggingface.co/datasets

**Maps / terrain**
32. https://dataspace.copernicus.eu/explore-data/data-collections/copernicus-contributing-missions/collections-description/COP-DEM
33. https://www.earthdata.nasa.gov/data/instruments/srtm
34. https://www.usgs.gov/3d-elevation-program · https://opentopography.org/
35. https://www.openstreetmap.org
36. https://www.maxar.com/ · https://www.planet.com/ · https://www.mapbox.com/

**Military/policy/spillover**
37. https://www.csis.org/analysis/defining-autonomy-why-software-not-drones-will-decide-next-war
38. https://thebulletin.org/2026/08/ai-helped-me-almost-build-a-killer-drone/ (full text recovered to `sources/bulletin-ai-killer-drone-2026.txt`)
39. https://theconversation.com/russia-ukraine-war-is-accelerating-the-dangerous-race-toward-fully-autonomous-drones-290877
40. https://www.darpa.mil/research/programs/air-combat-evolution
41. NYT, "A Drone Killed Three Ukrainians. It Was Guided Entirely by A.I.", 24 Aug 2026 — publisher URL not resolved (Google News listing only; low confidence)
42. Tom's Hardware, "Autonomous NATO strike drone uses Nvidia Jetson Orin Nano…", 20 Sep 2026 — publisher URL not resolved (Google News listing only; low confidence)
43. The Conversation, "Russian team 'misused' Claude AI to train a killer drone on scraped Ukrainian war footage", 15 Sep 2026 — publisher URL not resolved (Google News listing only; low confidence)
44. https://www.whitehouse.gov/presidential-actions/2026/06/national-security-presidential-memorandum-nspm-11/ (cited via CSIS)
