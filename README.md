# About
check_sentry is a Nagios plugin that is used to send test exception to the Sentry app and thus monitor its availability.

# How it works?
__check_sentry.sh__ file launches __check_sentry.py__ Python script which uses **sentry_sdk** to send test exception.
Because its output is quite messy and there was no possibility to redirect it to bash variable, it was redirected to output file.
By default output file will be located in __/tmp/output.txt__ path.
Content of the output file is checked for occurence of "ERROR:" string.

# How to make it work?
* in Sentry app create dedicated organization
* create dedicated Python project
* in project settings go to **SDK Setup** -> **Client Keys (DSN)**
* click **Generate New Key** button, copy DSN string and paste it as a DSN var value in __check_sentry.py__ file

# Useful links
https://docs.sentry.io/error-reporting/configuration/?platform=python
