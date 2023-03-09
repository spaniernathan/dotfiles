# Checklist

## To be done first in order.

- [] Follow the steps in the [README.md](README.md) file.
- [] Restart once completed (and as-needed for system updates done by the script).
- [] Rotate or import GPG keys.
- [] Rotate or import SSH keys.
- [] Activate Software Licenses.
- [] Copy various documents from backup.
- [] Login to applications.

## Then do those in any order.

- [] Install remaining applications not installed via automation.

- [] Add new computer in Keybase

- [] System Settings > General > Language & Region > Time format > 24-Hour Time.

- [] System Settings > GPG Suite > Remember for 86400.

- [] Change login shell to /usr/local/bin/zsh via System Settings > Users & Groups > Current User > Advanced Options (right click) > Login shell.

- [] Replace Spotlight with Alfred.

- [] Turn off Firefox > Settings > Privacy & Security > Firefox Data Collection and Use > Allow Firefox to install and run studies.

- [] Turn on Firefox > Settings > Privacy & Security > Prevent accessibility services from accessing your browser.

- [] Set host name under System Settings > Sharing > Computer Name.

- [] Edit /etc/pam.d/sudo and add the following as the first two lines to enable PAM Touch ID and PAM Watch ID:
```text
auth sufficient pam_touchid.so "reason=execute a command as root"
auth sufficient pam_watchid.so "reason=execute a command as root"
```

- [] Set Tabby as the default terminal application.

## To be done last.

- [] Reboot one last time.

## Worth mentioning.

- [] Remove old computer from Keybase when done with it.
