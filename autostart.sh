systemctl --user import-environment PATH DISPLAY HOME DBUS_SESSION_BUS_ADDRESS
systemctl --no-block --user start xsession.target

