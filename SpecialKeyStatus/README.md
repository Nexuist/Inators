### Introduction

My friend Joe bought a laptop that had no hardware LED for Caps Lock. I wrote a AutoHotKey script to provide a software notification whenever the key is pressed and also to show an icon in the notification tray so you can check if the option is enabled at a glance.

An additional script, NumLockStatus, is available which offers the same functionality for Num Lock.

### Icons

A number of icons are contained in the SHELL32 DLL in System32. They have been extracted and published by a generous StackOverflow user [here](http://superuser.com/a/138831). I used these icons in the tray notifications. For example, line 27:

```
Menu, Tray, Icon, shell32.dll, 174
```
Will use the 174th icon in the set.

### Concepts Used

* AutoHotKey

### Last Modified

Both scripts were created on February 5, 2016.
