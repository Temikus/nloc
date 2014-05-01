This workflow allows to quickly change between network locations.

Usage:

	nloc network_location_name

Script supports autocompletion of known network locations.

NOTE: Due to changes in security policy on OS X 10.8, system _will_ ask you for your password after executing the workflow.
You can avoid typing in the password every time by setting suid permission to /usr/sbin/networksetup with

	sudo chmod u+s /usr/sbin/networksetup

OS X 10.7 system shouldn't ask for your password since it doesn't require the `networksetup` command to be executed with super user privileges.
