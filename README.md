## Bash Logging


#### Usage 
```bash
#!/bin/bash
source /path/to/logging/repo/logging.sh

LOG_LEVEL=DEBUG
log_debug Hello,World!
```

Note: colors are disabled if standard output is redirected to a file.


# Configuration
Two environment variables can be used by the script which imports `logging.sh`;

```bash
LOG_LEVEL=TRACE
TIMESTAMP_FMT=+%Y-%m-$d
```

Note that these are optional, since the defaults are as follow:

```bash
LOG_LEVEL=WARN
TIMESTAMP_FMT=+%Y-%m-$dT%H:%M:%S
```

If you are on a linux machine, you **should** use a TIMESTAMP_FMT value with the `%N` field for nanoseconds. `logging.sh` uses the `date` utility, for which the `%N` is invalid on OSX.



