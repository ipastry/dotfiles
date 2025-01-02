Notes to follow 

- mv .config/.zshenv ~/
- cp .config/modprobe.d /etc/modprobe.d && rm -rf .config/modprobe.d
- cp .config/sleep.conf.d /etc/systemd/sleep.conf.d/disable-sleep.conf && rm -rf .config/sleep.conf.d

- cant get rid of the warning for name not matching org.freedesktop.Notifications for dunst 
