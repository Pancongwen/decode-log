# decode-log

# How to use

### `convert_str.py`
* Help
```
    usage: convert_str.py [-h] STRING NUM

    Convert a string by adding or subtracting specific ASCII number to its each
    character.

    positional arguments:
        STRING      the string that you want to convert
        NUM         the number that you want to add or subtract to character

    optional arguments:
        -h, --help  show this help message and exit
```

* Example
```
    $ ./convert_str.py "4" 15
    > C

    $ ./convert_str.py "C" -15
    > 4
    
    $ ./convert_str.py "123abc" 6
    > 789ghi
    
    $ ./convert_str.py "789ghi" -6
    > 123abc
```
The ASCII table is [here](https://www.asciitable.com/)


### `decode_log.sh`
* Help
```
    Usage: ./decode_log.sh <dirname>
    Description: decode log name by subtracting ASCII number 49
```

* Example
```
    # preparation
    $ mkdir test
    $ touch test/caab^bcd_ef_gh_ij^eaab-snmp-xxxxxxxx.log
    $ touch test/caac^bcd_ef_gh_ij^eaac-snmp-xxxxxxxx.log

    # experiment
    $ ./decode_log.sh test
    $ ls test
    > 2001-123.45.67.89-4001-snmp-xxxxxxxx.log
    > 2002-123.45.67.89-4002-snmp-xxxxxxxx.log
```