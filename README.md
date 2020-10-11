Tests the resolution of asset URLs from CSS files.

URL resolution is tested by checking:
* Bare URL strings.
* `url()` wrapped path strings.

URL resolution is tested in the following contexts:
* CSS modules included from a Javascript file.
* CSS files directly included from a Javascript file.
* CSS files transiently included from a Javascript file.
* Bare CSS files in a mount, unused from Javascript.
* CSS files included by bare CSS files in a mount.

Results can be seen by running `./test.sh`.
