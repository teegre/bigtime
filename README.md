# **bigtime** version 0.1 (06-2020)

**bigtime** is a customizable clock for the terminal, written in bash.

![alt text](img/bigtime1.png)
![alt text](img/bigtime2.png)
![alt text](img/bigtime3.png)
![alt text](img/bigtime4.png)

**/!\ this is work in progress!**

*Dependencies: jq*

## 1. Installation

### 1.1 Clone this repository:

`git clone https://github.com/teegre/bigtime.git`

### 1.2 Install **bigtime**

`./install.sh`

## 2. Usage

bigtime <options values>

OPTIONS:

* -c, --char <char>        - character for digits (default is █)
* -p, --space <char>       - character for whitespaces (default is " ")
* -f                       - display time in 24h format
* --offset <hours>         - hours to be added to current time
* -s, --small-seconds      - show seconds (normal size)
* -S, --big-seconds        - show seconds (big size)
* -d, --date               - show date
* -D, --date-format        - date format[^1]
* -b, --blink              - blinking separators
* -v, --vertical           - display clock vertically (not yet implemented)
* --file <filename>        - use a custom digits file
* --list                   - print available digits files
* --preset <0..4>          - use predefined characters (override -c and -p options)
* -F, --foreground <color> - set foreground color[^2]
* -B, --background <color> - set background color[^2]
* -h, --help               - print this help message and exit
* -V, --version            - print program's version and exit

[^1]: date format: W:abbr. weekday name M:abbr. month name D:day of month Y: year
[^2]: color values: 0:black 1:red 2:green 3:yellow 4:blue 5:magenta 6:cyan 7:white

## 3. TODO

* Implement vertical display
* Fix redraw issue when resizing terminal