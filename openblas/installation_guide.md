## Quick Installation
[Precompiled packages](https://github.com/xianyi/OpenBLAS/wiki/Precompiled-installation-packages) have recently become available for a number of platforms through their normal installation procedures, so for users of desktop devices at least, the instructions below are mostly relevant when you want to try the most recent development snapshot from git.

### Linux

Just type `make` to compile the library.

Notes
* OpenBLAS doesn't support g77. Please use gfortran or other Fortran compilers. e.g. `make FC=gfortran`.
* When building in an emulator (KVM,QEMU etc.) make sure that the combination of CPU features exposed to
  the virtual environment matches that of an existing CPU to allow detection of the cpu model to succeed. 
  (With qemu, this can be done by passing `-cpu host` or a supported model name at invocation)

### Windows

See [this page](https://github.com/xianyi/OpenBLAS/wiki/How-to-use-OpenBLAS-in-Microsoft-Visual-Studio).

### Mac OSX

If your CPU is Sandy Bridge, please use Clang version 3.1 and above. The Clang 3.0 will generate the wrong AVX binary code of OpenBLAS.

### FreeBSD

You will need to install the following tools from the FreeBSD ports tree:
* lang/gcc [1]
* lang/perl5.12
* ftp/curl
* devel/gmake
* devel/patch

To compile run the command:

    $ gmake CC=gcc46 FC=gfortran46

Note that you need to build with GNU make and manually specify the compiler, otherwhise gcc 4.2 from the base system would be used.

[1]: [Removal of Fortran from the FreeBSD base system](http://www.bsdunix.ch/serendipity/index.php?/archives/345-Removal-of-Fortran-from-the-FreeBSD-base-system.html)

### Android 
See [this page](https://github.com/xianyi/OpenBLAS/wiki/How-to-build-OpenBLAS-for-Android)

### MIPS
See [this page](https://github.com/xianyi/OpenBLAS/wiki/Faq#mips)