Docker based vimdeck
====================

## why?

Vimdeck depends on some ruby modules that are no longer compatible with the
latest versions of the software.  To be able to still use Vimdeck, without
having to hold back on updates on my machine, run it through docker with older
versions.

## Usage

Single file with no dependencies:

```sh
$ docker run --rm -it -e C_UID=$(id -u) -e C_GID=$(id -g) \
    -v "$(pwd)/mypresentation.md":"/home/vimdeck/mypresentation.md"
    blackikeeagle/vimdeck
$ vimdeck mypresentation.md
```

Presentation with images or other resources:

```sh
$ ls presentation
  mypresentation.md someimg.jpg

$ docker run --rm -it -e C_UID=$(id -u) -e C_GID=$(id -g) \
    -v "$(pwd)/presentation":"/home/vimdeck/presentation"
    blackikeeagle/vimdeck
$ cd presentation
$ vimdeck mypresentation.md
```
