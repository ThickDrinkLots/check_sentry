#!/usr/bin/python3
"""script used for monitoring Sentry app availability"""

import sentry_sdk

#To get the DSN string placed below you have to go to:
#Sentry -> Organization -> Project -> Client Keys (DSN)
DSN = ""
MSG = "This is just an availability check."

sentry_sdk.init(
    DSN,
    debug=True,
    default_integrations=True,
    )
sentry_sdk.capture_exception(Exception(MSG))
