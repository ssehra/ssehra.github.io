Prototype Lab Flow
==================
Projects blog: http://ssehra.github.io


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
