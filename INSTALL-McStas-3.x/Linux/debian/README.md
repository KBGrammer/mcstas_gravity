## Install McStas 3.1 On Debian class systems (including Ubuntu, mint etc.):

# Add the McCode repository
After following the below steps your package manager should now be aware of mcstas
```bash
cd /etc/apt/sources.list.d
sudo wget https://packages.mccode.org/debian/mccode.list
sudo apt-get update
```

# Debian only:
On Debian you will further have to install the non-free repository to have access to all McStas tool parts. See https://wiki.debian.org/SourcesList

# Look for McStas packages to install
```bash
mcstas@debian:~$ apt-cache search mcstas | grep -v 2.
mcstas-3.1 - mcstas built using CMake
mcstas-comps-3.1 - mcstas-comps built using CMake
mcstas-manuals-3.1 - mcstas_manuals built using CMake
mcstas-suite - A metapackage for McStas + perl and python tools
mcstas-suite-perl-ng - A metapackage for McStas + perl tools
mcstas-suite-python-ng - A metapackage for McStas + python tools
mcstas-tools-matlab-mcplot-3.1 - matlab-tools-mcplot built using CMake
mcstas-tools-perl-3.1 - legacy-tools built using CMake
mcstas-tools-perl-cmdline-3.1 - legacy-tools-cmdline built using CMake
mcstas-tools-python-mccodelib-3.1 - python-tools-mccodelib built using CMake
mcstas-tools-python-mcdisplay-mantid-3.1 - python-tools-mcdisplay-mantid built using CMake
mcstas-tools-python-mcdisplay-pyqtgraph-3.1 - python-tools-mcdisplay-pyqtgraph built using CMake
mcstas-tools-python-mcdisplay-webgl-3.1 - python-tools-mcdisplay-webgl built using CMake
mcstas-tools-python-mcgui-3.1 - python-tools-mcgui built using CMake
mcstas-tools-python-mcplot-pyqtgraph-3.1 - python-tools-mcplot-pyqtgraph built using CMake
mcstas-tools-python-mcrun-3.1 - python-tools-mcrun built using CMake
```
The meta-packages mcstas-suite-perl-ng and mcstas-suite-pytho-ng
allows you to install mcstas 3.1 with one or both sets of tools (mcrun/mcplot etc.) by simple apt-get commands like
```bash
sudo apt-get install mcstas-suite-python-ng
```
The -suite packages without 'ng' in the package name will install the
latest McStas 2.x package

# Optionals
Optionally install iFit to visualize results using a Matlab environment (for free, no license needed).
Optionally install a VRML/X3D plotter such as Freewrl or InstantReality.
Optionally, you can install the NeXus format libraries to be able to export data files in HDF5.
Please report any trouble with the repository to [mcstas-users](mailto:mcstas-users@mcstas.org)

# Installing without adding the repo
If you want to attempt installing our debian packages manually via
dpkg, the packages are available for download at https://download.mcstas.org/mcstas-3.1/linux/debian/
(available for multiple processor architectures).

## In case of issues
Please report any trouble with the repository to [mcstas-users](mailto:mcstas-users@mcstas.org)


