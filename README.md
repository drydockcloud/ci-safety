# ci-safety
Drydock CI compatible Python vulnerability scanner using Safety (https://github.com/pyupio/safety)

## Example

To scan a requirements.txt file in the current directory for vulnerabilities:

```
$ docker run -v $PWD/src:/target -v $PWD/results:/results drydockcloud/ci-safety
```

### Defaults

- Look in /target for requirements file.
- Report is written in text format to `/results/safety.txt`
- Non zero exit status if any vulnerabilites found

### Arguments

You can specify one of the following commands to alter safety's behavior

- `check-file FILE` (default) - Reads requirements file from FILE.  If FILE is missing, requirements.txt is assumed.
- `check-stdin` - Reads requirements from stdin.


