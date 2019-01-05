# EAGLE CAM Processor mkcam

A bash shell script that generates CAM files from Eagle-Designs.
The script takes as arguments the board file and the number of signal layers.
It generates two kinds of CAD/CAM data sets: One for the designer and another 
for the manufacturing and assembly folks. 
Remember: Never give design files away to the fab ! 
The fab gets plot and drill data, BOM, ... the CAM files.

## Installation

The "installer" just copies the script "mkcam" to $HOME/bin. This way the user is
free to modifiy "mkcam" as she whishes. The bin directory must be created
manually if not exising already. Make sure the $PATH environment variable is set properly.

```sh
sh install.sh
```

In order to have "mkcam" available for all users, modifiy the installer so that it copies mkcam
in /usr/local/bin for example. This would require root privileges of course.

## Prerequisites
Mkcam expects in the EAGLE project directory a subdirectory named "bom". 
A BOM file generated by Stock_Mangager should live there (see <https://github.com/Blunk-electronic/stock_manager>).

## Usage
Change into the EAGLE project:
```sh
cd eagle/projects/my_project
```

The board file should be there:
```sh
ls my_project.brd
```

If your board file contains four signal layers, launch mkcam this way:
```sh
mkcam my_project.brd 4
```

The outcome will be a subdirectory named CAD_CAM where the archives can be found.
