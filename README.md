nobin
=====

Quickly call node binary modules that are installed within closest node_modules/.bin

### Usage

Looks for closest node_modules directory and will execute binary insde of .bin

```bash
nobin gulp lint
```

is equivalant to running

```bash
node_modules/.bin/gulp lint
```

However, Nobin will recurse up your directory tree looking for a node_modules directory.

**Output will be:**
```bash
[NOBIN] Found node_modules directory at: /path/to/module/test/node_modules/
[NOBIN] Running: gulp lint
[11:29:55] Using gulpfile /path/to/module/test/gulpfile.js
[11:29:55] Starting 'lint'...
[11:29:55] Finished 'lint' after 518 ms
```

### Installation

Clone repo

```bash
git clone https://github.com/ScottONeal/nobin.git ~/tools/nobin
```

Alias nobin in your .bashrc
```bash
alias nobin='$HOME/tools/nobin/nobin.sh'
```
