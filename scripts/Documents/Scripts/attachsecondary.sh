#!/bin/bash

virsh detach-device Win10 ./KVMStuff/w11mainkeyboard.xml
virsh detach-device Win10 ./KVMstuff/w11mainmouse.xml

virsh attach-device Win10 ./KVMStuff/w11secondarykeyboard.xml
virsh attach-device Win10 ./KVMstuff/w11secondarymouse.xml
