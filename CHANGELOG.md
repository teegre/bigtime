# CHANGELOG

## Version 20220316-2.4.8

* Fixed issue: aplay --quiet option has NOT been deprecated.

## Version 20210420-2.4.7

* Fixed issue: aplay --quiet option has been deprecated.

## Version 20210213-2.4.6

* New digits file: flip.

## Version 20201103-2.4.5

* Update timezone display when a change occurs (DST).

## Version 20201009-2.4.4

* fixed time alignment issue in alarm and timer mode.

## Version 20201006-2.4.3

* **--foreground** is now priority.

## Version 20201001-2.4.2

* New digits file: blockz.
* Minor improvement.

## Version 20200930-2.4.1

* Fixed a bug where "SNOOZE" indicator in alarm mode was not cleared when switching
to another mode.

## Version 20200930-2.4

* New digits file: basic2.
* New digits file: reverse.
* basic.digits: changed snooze indicator.
* --edit: duplicate stock digits file to config dir.
* print_time: format is now [H]H:MM[a|p].
* display: better mode and snooze display.
* digit_input: even smarter hours input.
* alarm: hide 2nd separator (snooze duration).
* digit_input: smarter hours input.
* mode_display: added short form for smaller clocks.
* preview: colors now display correct color mode.
* digit select/input: snooze duration can now be set.
* read_param: handling of ' and " in digits file.
* Tiny timer (vertical) has different colors.
* Tiny timer (horizontal) has now a unique color.

## Version 2020923-2.3.1

* Added more info to **--preview** option.
* Removed some useless warnings.

## Version 20200921-2.3

* New digits file: block2.
* Improved space parameter implementation.
* More comments in digits template file.
* New digits file parameter: **colors**.
* Fixed: clear text indicator when switching from timer.
* Better digits file error handling.
* Disable date if digit height<=date height (-v).
* New digits file: basic.
* Disable snooze mode if a new alarm is set.

## Version 20200918-2.2

* Added **seconds**, **am_indicator** and **pm_indicator** parameters to **digits file**.

## Version 20200918-2.1.1

* Added new **digits file**: raspberry.

## Version 20200918-2.1

* Improved file preview. It now displays background color properly.
* Added some more parameters to **digits file**: **background** and **foreground**  
* Added **digits file** template.
* Added **--edit** option that allows to create a custom **digits file** from a template and edit it.
* Fixed a bug that occured when setting a 9h00 timer... -_-)'
* Bug fixes.

## Version 20200914-2.0.2

* Fixed timer not updated when redrawing clock.
* Fixed hourly time signal toggling in alarm and timer mode.
* Added **--no-separator** option.

## Version 20200910-2.0.1

* Fixed misaligned AM/PM indicator in vertical layout.

## Version 20200909-2.0

* Complete rewrite.
* Indicators are now customizable.
* Timer shows in time and alarm display mode.
* When toggling mode, show the display mode on top of the clock.

## Version 20200823-1.3.3

* Snooze duration can now be set.

## Version 20200819-1.3.2

* **--random** option now uses system 16 colors palette.
* when no date calculation is needed, **date** command is replaced by **builtin printf/strftime**.

## Version 20200816-1.3.1

* Bug fixes.

## Version 20200815-1.3

* Bug fixes.
* Seconds for timer are no longer modifiable.
* When alarm rings, pressing <kbd>space</kbd> enables snooze mode
* Pressing <kbd>a</kbd> while alarm rings, stop it and disables snooze mode.

## Version 20200804-1.2.4.4

* Bug fixes.

## Version 20200803-1.2.4.3

* Minor bug fixes.

## Version 20200802-1.2.4.2

* Added optional **layout** setting to **digits file**.  
* Added simple animation when quitting **bigtime**.
* Added **lcd2.digits**.

## Version 20200801-1.2.4.1

* Added **-l** option back.
* Disable snooze mode with <kbd>a</kbd>.
* Fixed wrong character in some **digits file**.
* Added **--quiet** option (disable sound, alarm, timer and hourly time signal)
* From now on, timer cannot be less than 5 seconds.
* Added libnotify dependency.

## Version 20200731-1.2.3

* Removed **--char**, **--space**, **--preset** and **--list-presets** options.
* Added optional **char** and **space** settings for **digits file**.  
**Bigtime** will use the default characters if these parameters are missing.
* Stock **digits files** and documentation have been changed accordingly.
* Added **--preview** option.
* Improved alarm setting from the command line.
* Added snooze indicator.
* Added lcd.digits.
* Added cross.digits.
* Added CREDITS section to README.md

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

