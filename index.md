---
title: oitofelix - DeciMatrix 8086
description: >
  DeciMatrix is a program designed to decode the Matrix into decimal.
tags: >
  QDot, 8086 Assembly, NASM, IBM-PC
license: CC BY-SA 4.0
layout: oitofelix-homepage
base: http://oitofelix.github.io
#base_local: http://localhost:4000
---
<div id="markdown" markdown="1">
## DeciMatrix 8086

![DeciMatrix logo]({{ page.base_local }}{{ site.baseurl }}/logo.png)

__DeciMatrix__ is a program designed to decode the Matrix into
decimal.  It's a spin-off of the
[Terminal Matrix 8086](/terminal-matrix-8086)'s `DCMATRIX` command,
built into a standalone executable sharing the same metamorphic
property of run-within-OS-or-bootstrap-itself-without-OS provided by
the [QDot](/qdot-8086) language and its standard library.  It works
with _CGA_, _EGA_ and _VGA_ graphic adapters and it runs on any IBM-PC
compatible, being the minimum requirement an 8086 processor with 16Kb
of RAM.  Its binary sums up to just a couple kilobytes and very
surprisingly is simultaneously a valid _DOS_ executable and a bootable
disk image, meaning that it can run even on machines with no operating
system at all!

It is based on the premise that it's easier for people to become
proficient in interpreting the Matrix code if instead of dealing with
very cryptic symbols rolling down in the screen, they could deal with
static and familiar symbols.  It's still quite hard to learn how to
see through the code, though; but don't worry --- if you happen to
never see the woman in red, at least you'll have used a very cool
_DOS_ screen-saver.



### Download

You can download the _DeciMatrix_ binary below.

- [DeciMatrix 8086 1.0 binary]({{ page.base_local }}{{ site.baseurl }}/dcmatrix.com)

_DeciMatrix_ is free software under _GPLv3+_ and you can obtain its
source code here.  It requires [NASM](http://www.nasm.us/), _The
Netwide Assembler_, in order to be built, and
[GNU Make](http://www.gnu.org/software/make/) to automate that
process.

- [DeciMatrix 8086 1.0 source code]({{ page.base_local }}{{ site.baseurl }}/decimatrix-8086-1.0.tar.gz)
- [VCS repository](http://github.com/oitofelix/decimatrix-8086/)


### Run

_DeciMatrix_ can run directly on real hardware or inside a virtual
machine --- under DOS, or bootstrapping itself.  To use it under DOS
on bare metal, just copy its binary to the respective machine and run
it as usual:

<pre>
C:\>DCMATRIX.COM
</pre>

I recommend you use [FreeDOS](http://www.freedos.org/), the free
software implementation of _DOS_, for best results.  To run
_DeciMatrix_ without operating system support you need to write it to
a storage medium that your computer can boot from; it may be a floppy
disk, a hard drive, an optical disk or even an USB mass storage
device.  Using this method requires that you afford a dedicated media
only for _DeciMatrix_, so make sure to backup any existing data, and
to reformat the media when re-purposing it.

You can use [RAWWRITE](http://www.freedos.org/software/?prog=rawrite)
to make a bootable floppy disk under _DOS_.  Just run _RAWWRITE_ and
follow the prompts inputting the program's binary name
(eg. `dcmatrix.com`) and the destination floppy drive letter
(eg. `a:`).  Under _GNU_ you can use the command-line utility `dd`, of
the [GNU coreutils](http://www.gnu.org/software/coreutils) package, to
make a bootable floppy disk, hard disk or USB mass storage device.  If
you are logged in as root, the incantation is as simple as:

<pre>
# dd if=dcmatrix.com of=&lt;device-node&gt;
</pre>

Where the variable `device-node` is the device node of the respective
drive.  In _GNU_ you can also make a bootable optical disk by using
the command-line utility `genisoimage`, from the _cdrkit_ package, in
the following way:

<pre>
$ mkdir dcmatrix
$ mv dcmatrix.com dcmatrix
$ genisoimage -no-emul-boot -b dcmatrix.com -o dcmatrix.iso dcmatrix
</pre>

This generates the `dcmatrix.iso` file that is a bootable optical disk
image that you can burn using `wodim` (from the same package as
`genisoimage`) or similar software.

If you'd like to run _DeciMatrix_ on a virtual machine under _DOS_
your best bet is probably [DOSBox](http://www.dosbox.com/), but
[DOSEMU](http://www.dosemu.org/) also does the job.  For any of them,
just run the program as you would in a real _DOS_ machine.  To run it
in a virtual machine without any operating system installed you can
use [QEMU](http://www.qemu.org/) instead --- just invoke it like this:

<pre>
$ qemu-system-i386 -fda dcmatrix.com
</pre>


### Use

To get a feel of how _DeciMatrix_ looks like, a video of a session
recorded in _DOSBox_, specifically for this purpose, has been made
available.  Enjoy!

https://www.youtube.com/watch?v=

<a target="_blank" href="https://www.youtube.com/watch?v=Le3k6cRZaE0">
    <img src="https://img.youtube.com/vi/Le3k6cRZaE0/0.jpg" alt="DeciMatrix 8086" />
</a>

<!-- <video controls> -->
<!--   <source src="{{ page.base_local }}{{ site.baseurl }}/decimatrix.mp4" type="video/mp4"> -->
<!-- </video> -->

<!-- <div style="text-align: center;" markdown="1"> -->
<!-- [Original recording]({{ page.base_local }}{{ site.baseurl }}/decimatrix.avi) -->
<!-- </div> -->


</div>
