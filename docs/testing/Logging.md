# Logging docs

Acapy supports multiple configurations of logging.

## Log level

Acapy's logging is based on python's [logging lib](https://docs.python.org/3/howto/logging.html).
Log levels `DEBUG`, `INFO` and `WARNING` are available.
Other log levels fall back to `WARNING`.

## Command Line Arguments

* `--log-level` - The log level to log on std out.
* `--log-file` - Path to a file to log to.
* `--log-handler-config` - Specifies `when`, `interval`, `backupCount` for the   `TimedRotatingFileMultiProcessHandler`. These 3 attributes are passed as a `;` seperated string. For example, `when` of d (days), `interval` of 7 and `backupCount` of 1 will be passed as `D;7;1`. Note: `backupCount` of 0 will mean all backup log files will be retained and not deleted at all. More details about these attributes can be found [here](https://docs.python.org/3/library/logging.handlers.html#timedrotatingfilehandler). `TimedRotatingFileMultiProcessHandler` supports the ability to cleanup logs by time and mantain backup logs and a custom JSON formatter for logs.
* `--log-fmt-pattern` - Specifies logging.Formatter pattern to override default patterns.
* `--log-json-fmt` - Specifies whether to use JSON logging formatter or text logging formatter. Defaults to `False`.

Example:

```sh
./bin/aca-py start --log-level debug --log-file acapy.log --log-handler-config "d;7;1" --log-fmt-pattern "%(asctime)s [%(did)s] %(filename)s %(lineno)d %(message)s" --log-json-fmt
```

## Environment Variables

The log level can be configured using the environment variable `ACAPY_LOG_LEVEL`.
The log file can be set by `ACAPY_LOG_FILE`.
The log config can be set by `ACAPY_LOG_CONFIG`.
The log rotating file handler config can be set by `ACAPY_LOG_HANDLER_CONFIG`.
The log formatter pattern can be set by `ACAPY_LOG_FMT_PATTERN`.
The log json formatter flag can be set by `ACAPY_LOG_JSON_FMT`.

Example:

```sh
ACAPY_LOG_LEVEL=info ACAPY_LOG_FILE=./acapy.log ACAPY_LOG_CONFIG=./acapy_log.ini ACAPY_LOG_HANDLER_CONFIG="d;7;1" ./bin/aca-py start
```

## Acapy Config File

Following parameters can be used in a configuration file like [this](https://github.com/hyperledger/aries-cloudagent-python/tree/0.10.4/demo/demo-args.yaml).

```yaml
log-level: WARNING
debug-connections: false
debug-presentations: false
```

Warning: debug-connections and debug-presentations must not be used in a production environment as they log also credential claims values.
Both parameters are independent of the log level, which means:
Also if log-level is set to WARNING, connections and presentations will be logged like in debug log level.

## Log config file

Find an example in [default_logging_config.ini](https://github.com/hyperledger/aries-cloudagent-python/tree/0.10.4/aries_cloudagent/config/default_logging_config.ini).

You can find more detail description in the [logging documentation](https://docs.python.org/3/howto/logging.html#configuring-logging).
