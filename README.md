# **bigtime** version 0.4 (07-2020)

**bigtime** is a customizable clock for the terminal, written in bash.

![alt text](img/bigtime1.png)  
![alt text](img/bigtime2.png)  
![alt text](img/bigtime9.png)  
![alt text](img/bigtime3.png)  
![alt text](img/bigtime5.png)  
![alt text](img/bigtime4.png)  
![alt text](img/bigtime6.png)  
![alt text](img/bigtime7.png)  
![alt text](img/bigtime8.png)  


*depends on: bash, ncurses, alsa-utils*

## 1. Installation

### 1.1 Clone this repository:

`git clone https://github.com/teegre/bigtime.git`

### 1.2 Install **bigtime**

`./install.sh`

## 2. Usage

bigtime [options values]

OPTIONS:

* -c, --char [char]        - character for digits (default is ∎)
* -p, --space [char]       - character for whitespaces (default is " ")
* -f                       - display time in 24h format
* -s, --small-seconds      - show seconds (normal size)
* -S, --big-seconds        - show seconds (big size)
* -d, --date               - show date
* -D, --date-format        - date format(1)
* -b, --blink              - blinking separators
* -a, --alarm [time]       - set daily alarm
* -i, --chime              - activate hourly time signal
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

(1): date format:

* %W: abbr. weekday name
* %m: abbr. month name
* %M: month
* %D: day of month
* %Y: year

## 3. Display

```
hourly time signal
|
| date
| |
| WED 07-15
∎  ∎∎∎   ∎∎∎       ∎∎∎     ∎      ∎∎∎∎    ∎
  ∎   ∎ ∎   ∎     ∎   ∎   ∎∎          ∎  ∎
  ∎ ∎ ∎  ∎∎∎∎        ∎   ∎ ∎       ∎∎∎  ∎∎∎∎
  ∎   ∎    ∎   ∎    ∎   ∎∎∎∎∎  ∎      ∎ ∎   ∎
A  ∎∎∎    ∎    ∎  ∎∎∎∎∎    ∎   ∎  ∎∎∎∎   ∎∎∎  PM -- AM/PM indicator
| |            |  |               |
| hours        |  minutes         seconds
|              |
|              separator
|
daily alarm
```

## 4. Alarm

To set a daily alarm starting tomorrow at 7:00 AM:  
`bigtime --alarm "7:00 tomorrow"`

To test the alarm :  
`bigtime --alarm "now"`

Press space bar to stop.


## 5. Key bindings

* a     - toggle daily alarm; set / confirm new alarm
* h     - toggle hourly time signal
* j     - select next digit (alarm setting mode)
* k     - select previous digit (alarm setting mode)
* p     - toggle AM/PM (alarm setting mode)
* q     - exit program
* r     - refresh screen
* space - display / stop alarm / cancel (alarm setting mode)

## 6. Custom digits file

Basically a digit file contains instructions on how to draw digits on the screen.  
They have the *.digits* extension and must be stored in **bigtime** configuration  
directory: `$HOME/.config/bigtime`

### 6.1 Size

All digits must have the same size (in characters) which is defined as follow:  
`height=5`  
`width=5`

The separator can have a different width but must have the same height as digits:  
`sep_width=1`

### 6.2 Digits, separator and blank

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

By default, **bigtime** replaces 0 by whitespace and 1 by ∎ but characters and  
spaces can be hardcoded as well, i.e:  
`0=@@@@@;@@_@@;@@_@@;@@_@@;@@@@@`

### 6.3 Example: narrow.digits file

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
