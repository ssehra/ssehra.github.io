Prototype Lab Flow
==================
Projects blog: http://ssehra.github.io


Table of Contents
=================
1. [Introduction](#introduction)
  - [What is the Project?](#what-is-the-protoype-lab-flow-project)
  - [Why is is useful?](#why-is-is-useful)
2. [Build Budget](#build-budget)
  - [A breakdown of the item needed to build this project](#heres-a-breakdown-of-the-item-needed-to-build-this-project)
3. [Time Commitment](#time-commitment)
4. [Mechanical Assembly](#mechanical-assembly)
5. [PCB Soldering](#pcb-soldering)
6. [Unit Testing](#unit-testing)
7. [Power Up](#power-up)
8. [Production Testing](#production-testing)
9. [Conclusion](#conclusion)


Introduction
============
This document will provide you with all the necessary information required to build your very own "Prototype Lab Flow" project.

##### _What is the Protoype Lab Flow project?_
Well in simple terms, this project is a realtime database that allows the user to add/remove items into the database by simply scanning QR Codes.

##### _Why is is useful?_
This project replaces the current item sign-out system used at the Humber Protoype Lab as well as the Humber Parts Crib. The current system requires a student to fill out a form and and lend their Humber ID Card in order to borrow items. This system is a slower process because students have to wait in queues just a fill out a form.  This project makes this system more efficient by allowing the adminstrator to simply scan QR Codes instead of waiting for the students to fill out thier forms.

If you are still on how the project will work or what will it do the systems diagram below should be helpful.

![Alt text](/Diagram.png?raw=true "System Diagram")

_The diagram above shows input, ouput and processing components of this project. The Webcam will scan QR codes as input while the Raspberry Pi will process that input to add into a database. The final output will the an andorid application showing that the item has been added to the database. However for now, a feedback from L.E.D. blinking will replace the andorid application in the systems diagram._


Build Budget
============
Before we start building something, we need to plan a budget. A budget will be especially helpful in managing the financial costs related to our build. 

##### Here's a breakdown of the item needed to build this project.
1. A Raspberry Pi
2. USB Webcam
3. A MicroUSB AC adapter
4. A Case for Raspberry Pi 
5. HDMI Cable
6. A MicroSD Card (8GB or higher)
7. ~~Keyboard/Mouse Combo (USB or bluetooth)~~
8. ~~A monitor~~

##### The list of PCB components needed to build the PCB
- 2x20 Header Female (Qty: 1) $3.73
- 100nF Capacitor (Qty: 4) $5.80
- 10uF Capacitor (Qty: 1) $1.45
- 1kΩ Resistor (Qty: 1) $0.15
- 3.9kΩ Resistor (Qty: 4) $2.40
- 4.7kΩ Resistor (Qty: 3) $1.35
- 3mm LED (Qty: 1)  $0.61
- N-Channel Logic Level MOSFET (Qty: 1) $0.99
- ~~Real Time clock Battery (Qty: 1) $0.48~~
- ~~I2C Real Time Clock (Qty: 1) $11.95~~
- ~~8-bit I2C ADC&DAC with sensors (Qty: 1) $8.50~~
- ~~1x4 Header Female (Qty: 2)  $1.70~~
- ~~1x5 Header Female (Qty: 2) $3.40~~

Let's start with the core of the project, a Raspberry Pi. The Raspberry Pi alone costs around $60-70 online if you're lucky enough find one. I highly recommend opting in for the Raspberry Pi starter kit instead as it comes with all the necessary items like a microSD card, an AC adapter and a case (as well as other stuff like a microSD reader). It's available for about $20-30 extra.

A case is highly recommended as the raspberry pi is relatively fragile microcomputer. A microSD card is required to run the Raspbian OS on the pi. And of course, the AC adapter can be substituted with any microUSB phone/tablet charger.

Moving on, a webcam will be required to scan QR codes. Any USB webcam will do fine. So no need a spend the extra bucks for a high definition webcam. An average webcam will cost between $20 and $35. Or even cheaper if you find a used/refurbished one.

Finally, there is cost associated with the fabricating of a PCB (Printed Circuit board) as well it's components. The Prototype Lab at Humber College charges about $40 to print a PCB. The components I have on my PCB cost about $42.52. However, I do a have a bunch of extra components like sensors and headers that you don't need. This is why is I have them corssed out on the list. Morever, this brings the cost down from $42.52 to $16.49. The actual cost might still be higher since not all components are sold in the quantitiy of single units. As a Humber student, all of this is covered as part of my tuition fees. 

Altogether I spent about $100 on the Raspberry Pi starter kit from Amazon. If you buy an older Raspberry Pi, you have to spend extra on a USB wifi receiver or use the ethernet instead. I used my old webcam which I bought for about $35-$40 at the time. And I didn't have to pay extra for the PCB since I'm a Humber student as well as the PCB components. I'm not including a monitor, and a keyboard and a mouse since almost eveybody owns at least one of each. If not then you can buy any monitor with an HDMI and any USB or bluetooth keyboard/mouse combo.

Here's a table thats shows all the items I bought and how much I paid for them. Note all prices are in CAD. I'm also including the PCB fabricating cost to create a reference for you to compare total costs.

| Item                               | Cost   |
|------------------------------------|--------|
| Rasberry Pi 3 Starter Kit          | $99.99 |
| Microsoft LifeCam VX-1000          | $34.99 |
| PCB Fabrication Cost               | $40    |
| Reqruired components for PCB       | $42.52 |
|**Total**                           | **$245.78**|

My final build cost totals to about approximately $200 (That's including taxes and other expenses like shipping and handling).


Time Commitment
===============
Time is a resource arguably as valuable as money. And this project demands plenty of it. 

I had almost 15 weeks to work this project however with these detailed instructions I will be cutting that time significantly for anyone wanting to recreate this project. Majority of my time was spent in implementing the QR scanning functionality and blinking the L.E.D. for feedback. It was my first time soldering and I was able to solder the PCB in less than an hour. 

If you already have acquired all the parts and got the PCB printed, I beleive this project can be completed in a day. That's if you copy paste the all the code and it runs flawlessly without any errors.


PCB Soldering
=============
Let's start with the PCB first. 


Mechanical Assembly
===================
by Nowyou have acquired all the parts you are ready to start doing mechanical assembly. It's extremely easy for this this project. 


Unit Testing
============
abc


Power Up
========
abc


Production Testing
============
abc


Conclusion
==========
abc
