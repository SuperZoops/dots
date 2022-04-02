#!/bin/bash

virsh attach-device Win10 /mnt/Usagichan/KVMstuff/w11mainkeyboard.xml
virsh attach-device Win10 /mnt/Usagichan/KVMstuff/w11mainmouse.xml

virsh detach-device Win10 /mnt/Usagichan/KVMstuff/w11secondarykeyboard.xml
virsh detach-device Win10 /mnt/Usagichan/KVMstuff/w11secondarymouse.xml
