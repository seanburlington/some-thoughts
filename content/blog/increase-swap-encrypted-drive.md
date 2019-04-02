---
title: "Increase Swap Size on an Encrypted Drive"
date: 2019-04-01T14:56:49+01:00
draft: false
tags:
 - note-to-self
 - how-to
 - Linux
 - Ubuntu
 - LVM

---


I recently started a new job with [www.codeenigma.com](https://www.codeenigma.com/) and they use a [very interesting dev stack](https://github.com/codeenigma/ce-vm).

This uses [Docker and Vagrant](https://blog.codeenigma.com/release-4-x-of-ce-vm-a-digression-about-docker-virtualbox-vagrant-and-docker-compose-d783a621073d) and for this project it hosts several servers locally some of which run quite memory hungry processes.

I also use the Chrome Browser which is notorious for using memory.

I quickly found I was running out of memory and my laptop would hang.

Linux should be able to manage this better - it [seems there may be a bug](https://unix.stackexchange.com/questions/373312/oom-killer-doesnt-work-properly-leads-to-a-frozen-os) and I'm not quite sure what the problem is - but several posts I read suggested the problem was not enough swap space and sure enough I had only 1Gb swap (with 8GB physical RAM).

I read up on how to increase swap space - but several posts suggested it was easier to reinstall - and I didn't find any details how to resize when using an encrypted disk.

When you can't find a post on how to do something in Linux it usually means it's really hard or really easy ... sadly I forgot to consider the second of those reasons and tried to solve by reinstalling.

This didn't fix it - the installer simply didn't give an option to customise swap space on an encrypted drive.


Eventually I realised that the encrypted drive uses LVM and resizing was fairly easy.

I booted off a USB stick - I'm not sure if this was needed.

I then ran the following

{{< highlight bash >}}
# install tools needed onto live system
sudo apt-get update && sudo apt-get install lvm2 cryptsetup
sudo modprobe dm-crypt

# open the encrypted drive (needs the passphrase)
sudo cryptsetup luksOpen /dev/sda5 crypt1

# look at what I have
sudo lvmdiskscan 
sudo lvs ubuntu-vg

# check my main volume 
sudo e2fsck -f /dev/mapper/ubuntu--vg-root 

# reduce main volume (it was 236g)
sudo resize2fs /dev/mapper/ubuntu--vg-root 220g

# reduce the main partition 
sudo lvreduce -L 220g /dev/mapper/ubuntu--vg-root 

# extend the swap volume
sudo lvextend -l 100%FREE  /dev/mapper/ubuntu--vg-swap_1

{{< / highlight >}}

I rebooted and all was fine except my swap wasn't any bigger

I had forgotten to increase the swap partition to fill the bigger volume

This just required turning swap off, running mkswap on the whole device and turning it back on.

{{< highlight bash >}}
sudo swapoff
mkswap /dev/mapper/ubuntu--vg-swap_1 
swapon
{{< / highlight >}}

Now hopefully when I run out of RAM my system may slow down but will still be usable.

Last time I messed with LVM was 9 years ago and fortunately I blogged about that too - because my notes were useful to me.

http://www.practicalweb.co.uk/blog/2010/04/09/resizing-an-ext3-filesystem-on-lvm/






