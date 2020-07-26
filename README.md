# **bigtime**

**bigtime** is a customizable clock for the terminal, written in bash.

*depends on: bash, coreutils, ncurses, alsa-utils*

## 1. Installation

### 1.1 Clone this repository:

`git clone https://github.com/teegre/bigtime.git`

### 1.2 Install **bigtime**

`./install.sh`

## 2. Display

*Vertical display with date and small seconds:*  
`bigtime -dsv --preset 0`  
```
█████ █████ SA
██ ██ ██ ██ 07
██ ██ █████ 25
██ ██ ██ ██
█████ █████ PM

██ ██ ██ ██
██ ██ ██ ██
█████ █████
   ██    ██
   ██    ██ 13
```

*Horizontal display with big seconds:*  
`bigtime -S --preset 0`
```
█████ █████    ██ ██ █████    ██ ██ █████
██ ██ ██ ██ ██ ██ ██ ██ ██ ██ ██ ██ ██
██ ██ █████    █████ █████    █████ █████
██ ██ ██ ██ ██    ██ ██ ██ ██    ██    ██
█████ █████       ██ █████       ██ █████ PM
```

### 2.1 Indicators
Indicator are displayed on the left hand side of the clock:

* s   - hourly time signal
* a   - daily alarm
* t   - timer
* A - alarm display mode
* [A] - alarm setting mode
* T - timer display mode
* [T] - timer setting mode

## 3. Usage

bigtime [option value...option value]

OPTIONS:

* -c, --char [char]        - character for digits (default is ∎)
* -p, --space [char]       - character for whitespaces (default is " ")
* -f                       - display time in 24h format
* -s, --small-seconds      - show seconds (normal size)
* -S, --big-seconds        - show seconds (big size)
* -d, --date               - show date
* -b, --blink              - blinking separators
* -a, --alarm [time]       - set daily alarm
* -t, --timer [duration]   - set timer (format: [H]H:MM[:SS])
* -i, --signal             - activate hourly time signal
* -v, --vertical           - display clock vertically
* --file [filename]        - use a custom digits file (filename only)
* -l, --list-files         - print available digits files
* --preset [0..n]          - use predefined characters (override -c and -p options)
* -P, --list-presets       - print available presets
* -F, --foreground [0..n]  - set foreground color
* -B, --background [0..n]  - set background color
* -C, --list-colors        - print available colors
* -h, --help               - print this help message and exit
* -V, --version            - print program's version and exit

## 4. Alarm

### 4.1 From the command line
To set a daily alarm starting tomorrow at 7:00 AM:  
`bigtime --alarm "7:00 tomorrow"`

To test the alarm :  
`bigtime --alarm "now"`

Press <kbd>space</kbd> to stop the alarm.  
It will then be set for the next day.

### 4.2 From within the application

Press <kbd>a</kbd> to set a new alarm.  
To modify an existing alarm, press <kbd>space</kbd> and <kbd>a</kbd>.  
Enter the desired time.  
Press <kbd>j</kbd> or <kbd>k</kbd> to select next/previous digit.  
Press <kbd>p</kbd> to toggle AM/PM.

When done, press <kbd>a</kbd> to enable the alarm.

Or press <kbd>space</kbd> to cancel.

## 5 Timer

### 5.1 From the command line
To set a 3 minutes and 30 seconds timer:  
`bigtime --timer "0:03:30"`

### 5.2 From within the application

Press <kbd>t</kbd> to set a new timer.  
To modify an existing timer, press <kbd>space</kbd> (twice if an alarm is set) and <kbd>t</kbd>.  
Enter the desired duration.  
Press <kbd>j</kbd> or <kbd>k</kbd> to select next/previous digit.  
Press <kbd>r</kbd> to reset current timer.

When done, press <kbd>t</kbd> to confirm.

Or press <kbd>space</kbd> to cancel.


## 6. Key bindings

* <kbd>a</kbd>     - toggle daily alarm; set / confirm new alarm
* <kbd>h</kbd>     - toggle hourly time signal
* <kbd>j</kbd>     - select next digit (alarm/timer setting mode)
* <kbd>k</kbd>     - select previous digit (alarm/timer setting mode)
* <kbd>p</kbd>     - toggle 24h format / toggle AM/PM (alarm setting mode)
* <kbd>q</kbd>     - exit program
* <kbd>r</kbd>     - reset timer (timer setting mode)
* <kbd>t</kbd>     - toggle timer; set / confirm new timer
* <kbd>R</kbd>     - refresh screen
* <kbd>space</kbd> - toggle display mode / stop alarm/timer / cancel (alarm/timer setting mode)

## 7. Custom digits file

Basically a digit file contains instructions on how to draw digits on the screen.  
They have the *.digits* extension and must be stored in **bigtime** configuration  
directory: `$HOME/.config/bigtime`

### 7.1 Size

All digits must have the same size (in characters) which is defined as follow:  
`height=5`  
`width=5`

The separator can have a different width but must have the same height as digits:  
`sep_width=1`

### 7.2 Digits, separator and blank

They are sequences of 0s and 1s, for instance:  

```
11111
11011
11011
11011
11111
```  
represents digit 0, and it is stored as:  
`0=11111;11011;11011;11011;11111`

By default, **bigtime** replaces 0 by whitespace and 1 by ∎.  
Characters and spaces can be hardcoded as well, i.e:  
`0=@@@@@;@@_@@;@@_@@;@@_@@;@@@@@`

### 7.3 Example: narrow.digits file

```
width=3
height=5
sep_width=1
0=111;101;101;101;111
1=110;010;010;010;010
2=111;001;111;100;111
3=111;001;111;001;111
4=101;101;111;001;001
5=111;100;111;001;111
6=111;100;111;101;111
7=111;001;001;001;001
8=111;101;111;101;111
9=111;101;111;001;111
separator=0;0;0;0;1
blank=0;0;0;0;0
```
## 8. Changelog

### Version 20200725-1.1

* Added a little splash screen.

### Version 20200725-1.0

* Complete rewrite
* Added timer
* Added more sound effects
