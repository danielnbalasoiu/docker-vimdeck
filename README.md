Docker based vimdeck
====================

## why?

Vimdeck depends on some ruby modules that are no longer compatible with the
latest versions of the software.  To be able to still use Vimdeck, without
having to hold back on updates on my machine, run it through docker with older
versions.

## Usage

```sh
$ docker run --rm -it -e C_UID=$(id -u) -e C_GID=$(id -g) \
    -v "./mypresentation.md":"/home/vimdeck/mypresentation.md"
    blackikeeagle/vimdeck
```

You will be dropped in a shell, from there you can run:
`vimdeck mypresentation.md` and start your slides.
