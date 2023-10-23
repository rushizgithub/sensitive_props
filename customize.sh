#!/system/bin/sh

if $BOOTMODE; then
    ui_print "- Installing from Magisk app"
else
    ui_print "*********************************************************"
    ui_print "! Install from recovery is NOT supported"
    ui_print "! Recovery sucks"
    ui_print "! Please install from Magisk app"
    abort    "*********************************************************"
fi

chmod 755 "$MODPATH/service.sh"

sh "$MODPATH/service.sh" 2>&1