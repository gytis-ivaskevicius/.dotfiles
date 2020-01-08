systemctl --user import-environment PATH DISPLAY HOME DBUS_SESSION_BUS_ADDRESS
systemctl --user start --wait xsession.target

