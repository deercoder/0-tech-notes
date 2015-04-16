How to remount
===

Not all phones and versions of android have things mounted the same.
Limiting option when remounting would be best.

Simply change ro to rw and add the remount option

```
# mount -o rw,remount /system
```

Once you are done making changes, you should remount with the original readonly.

```
# mount -o ro,remount /system
```


**NOTE**: this is used for remounting the system as read&write for deleting system apps in android
