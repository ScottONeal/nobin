nobin
=====

Quickly call node binary modules that are installed within closest node_modules/.bin

### Usage

Looks for closest node_modules directory and will execute binary insde of .bin

```bash
nobin grunt build
```

is equivalant to running

```bash
node_modules/.bin/grunt build
```

However, Nobin will recurse up your directory tree looking for a node_modules directory.

### Installation

Clone repo

```bash
git clone http://idc2.ssd.census.gov:8080/oneal312/nobin.git ~/tools/nobin
```

Alias nobin in your .bashrc
```bash
alias nobin='$HOME/tools/nobin/nobin.sh'
```
