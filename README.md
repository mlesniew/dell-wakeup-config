# Dell Laptop Ubuntu Wakuep Config

Does your Dell laptop keep waking up from suspend and draining the battery overnight?  Mine did too.

This repo contains a little script that disables all wake-up sources except the power button.  No more
surprise wake-ups from USB devices, lid sensors, mouse moves or other random events.

## How It Works

By default, Linux lets lots of devices wake your laptop from suspend. This script restricts that to
just the power button.

Since these settings reset on every reboot, the repo also includes a systemd service to apply the fix
automatically after each boot.

## Installation

Clone and install using Ubuntu:

```
git clone git@github.com:mlesniew/dell-wakeup-config.git
cd dell-wakeup-config
sudo make install
```

This installs the script and enables the systemd unit so the settings are applied at every startup.

## Notes

* Tested on **Dell Latitude** models 5430 and 5320.
* Tested with Ubuntu 22.04, 24.04 and 24.10
