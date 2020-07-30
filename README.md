# ***-BiGTiME-***

![screenshot](screenshot.png)

**bigtime** is a customizable clock for the terminal, written in bash.

*depends on: bash, coreutils, ncurses, alsa-utils*

# Table of Contents

* [INSPIRATION](#inspiration)
* [INSTALLATION](#installation)
* [DISPLAY](#display)
* [USAGE](#usage)
* [ALARM](#alarm)
* [TIMER](#timer)
* [KEY BINDINGS](#key-bindings)
* [DIGITS FILE](#digits-file)
* [UNINSTALL](#uninstall)
* [CHANGELOG](#changelog)

![screencast](bigtime.gif)

# INSPIRATION <a name="inspiration"></a>

## The Concept
![watch](watch.jpg)
## The Sound
![gameboy](gameboy.jpg)
## The Colors
![nyancat](nyancat.jpg)
## The Name
[Pater Gabriel: Big Time](https://invidio.us/watch?v=PBAl9cchQac)

# INSTALLATION <a name="installation"></a>

## Clone this repository:

`git clone https://github.com/teegre/bigtime.git`

## Install **bigtime**

You can find **bigtime** in the [Arch User Repository](https://aur.archlinux.org/packages/bigtime).

`make install`

# DISPLAY <a name="display"></a>

*Vertical display with date and small seconds:*  
`bigtime -dsv`  
```
 ∎∎∎  ∎∎∎∎∎ TU
∎   ∎     ∎ 07
∎ ∎ ∎    ∎  28
∎   ∎   ∎
 ∎∎∎   ∎    PM

∎∎∎∎   ∎∎∎
∎     ∎   ∎
∎∎∎∎     ∎
    ∎   ∎
∎∎∎∎  ∎∎∎∎∎ 46
```

*Horizontal display with big seconds:*  
`bigtime -S`  
```
 ∎∎∎  ∎∎∎∎∎     ∎∎∎∎    ∎         ∎     ∎
∎   ∎     ∎     ∎      ∎∎        ∎∎    ∎
∎ ∎ ∎    ∎      ∎∎∎∎    ∎         ∎   ∎∎∎∎
∎   ∎   ∎    ∎      ∎   ∎    ∎    ∎   ∎   ∎
 ∎∎∎   ∎     ∎  ∎∎∎∎   ∎∎∎   ∎   ∎∎∎   ∎∎∎  PM

```

## Indicators
Indicator are displayed on the left hand side of the clock:

* `s`  - hourly time signal activated.
* `a`  - daily alarm activated.
* `t`  - timer activated.
* `>a` - alarm display mode.
* `a<` - alarm setting mode.
* `a!` - alarm is ringing.
* `>t` - timer display mode.
* `t<` - timer setting mode.
* `t!` - timer is ringing.

## USAGE <a name="usage"></a>

bigtime [OPTION [VALUE] ... OPTION [VALUE]]

OPTIONS:

* -c, --char "CHAR"        - character for digits (default is ∎).
* -p, --space "CHAR"       - character for whitespaces (default is " ").
* -f                       - display time in 24h format.
* -s, --small-seconds      - show seconds (normal size).
* -S, --big-seconds        - show seconds (big size).
* -d, --date               - show date.
* -z, --timezone           - show timezone (i.e. +0200).
* -F, --foreground 0..N    - set foreground color.
* -B, --background 0..N    - set background color.
* -r, --rainbow            - rainbow effect (override -n and -F options).
* -n, --random             - random colors effect (override -r and -F options).
* -C, --list-colors        - print available colors and exit.
* -b, --blink              - blinking separators.
* -a, --alarm TIME         - set daily alarm.
* -t, --timer DURATION     - set timer (format: [H]H:MM[:SS]).
* -i, --signal             - activate hourly time signal.
* -v, --vertical           - display clock vertically.
* --file FILENAME          - use a custom digits file (filename only).
* -l, --list-files         - print available digits files and exit.
* --preset 0..N            - use predefined characters (override -c and -p options).
* -P, --list-presets       - print available presets and exit.
* -h, --help               - print this help message and exit.
* -V, --version            - print program's version and exit.

# ALARM <a name="alarm"></a>

## From the command line
To set a daily alarm starting tomorrow at 7:00 AM:  
`bigtime --alarm "7:00 tomorrow"`

To test the alarm :  
`bigtime --alarm "now"`

Press <kbd>space</kbd> to stop the alarm.  
It will then be set for the next day.

## From within the application

Press <kbd>a</kbd> to set a new alarm.  
To modify an existing alarm, press <kbd>space</kbd> and <kbd>a</kbd>.  
Enter the desired time.  
Press <kbd>j</kbd> or <kbd>k</kbd> to select next/previous digit.  
Press <kbd>p</kbd> to toggle AM/PM.

When done, press <kbd>a</kbd> to enable the alarm.

Or press <kbd>space</kbd> to cancel.

# TIMER <a name="timer"></a>

## From the command line
To set a 3 minutes and 30 seconds timer:  
`bigtime --timer "0:03:30"`

## From within the application

Press <kbd>t</kbd> to set a new timer.  
To modify an existing timer, press <kbd>space</kbd> (twice if an alarm is set) and <kbd>t</kbd>.  
Enter the desired duration.  
Press <kbd>j</kbd> or <kbd>k</kbd> to select next/previous digit.  
Press <kbd>r</kbd> to reset current timer.

When done, press <kbd>t</kbd> to confirm.

Or press <kbd>space</kbd> to cancel.

# KEY BINDINGS <a name="key-bindings"></a>

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

# TIMEZONE <a name="timezone"></a>

To display the time for a different timezone:  
```TZ=Europe/Paris bigtime```

# DIGITS FILE <a name="digits-file"></a>

Basically a digit file contains instructions on how to draw digits on the screen.  

## Size

All digits must have the same size (in characters) which is defined as follow:  
`height=5`  
`width=5`

The separator can have a different width but must have the same height as digits:  
`sep_width=1`

## Digits, separator and blank

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

By default, **bigtime** replaces 0 by whitespace and 1 by "∎".  
Characters and spaces can be hardcoded as well, i.e:  
`0=@@@@@;@@_@@;@@_@@;@@_@@;@@@@@`

## Example: narrow.digits file

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

**You can find more examples in /etc/bigtime/digits directory**

Custom digits files must be stored in **bigtime** configuration directory:  
`$HOME/.config/bigtime`

# UNINSTALL <a name="uninstall"></a>

`make uninstall`

# CHANGELOG <a name="changelog"></a>

## Version 20200730-1.2.2

* Terminal title now updates correctly.
* **-c** and **-p** options only accept 1 alphanumeric character.
* Fixed bug: set timer after entering a wrong digit.
* Fixed bug: set timer after a reset.
* When timed out, now display a notification.
* Added icons to notifications.
* Inspiration section, some pictures and animated GIF added to **README.md**.

## Version 20200728-1.2.1

* Automatic snooze: after 1 minute, alarm stops and the clock enter snooze mode.  
Alarm will sound again after 5 minutes. Snooze mode is deactivated only if <kbd>space</kbd>  
is explicitly pressed, if alarm is disabled or if a new alarm is set.
* In alarm/timer display/setting mode, go back to time display after a period of inactivity.
* Changed alarm and timer indicators.
* Added timezone (+0000 format).
* rainbow and random mode are mutually exclusive.
* Changed default digits file.
* New installation process.

## Version 20200727-1.2

* New rainbow and random effects.
* Fixed minor bugs

## Version 20200725-1.1

* Added a little splash screen.

## Version 20200725-1.0

* Complete rewrite
* Added timer
* Added more sound effects
