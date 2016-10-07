# ogs-font
Contains various icons we use use throughout the OGS interface


## Build dependencies

https://github.com/fontforge/fontforge
https://www.freetype.org/ttfautohint/
https://github.com/FontCustom/fontcustom
http://people.mozilla.com/~jkew/woff/woff-code-latest.zip
http://www.w3.org/Tools/eot-utils/eot-utilities-1.1.tar.gz


### For arch linux installing these can be done as follows:

`make deps`

or more expliclty:

```
# Deps
pacman -S fontforge
aurget -S ttfautohint

# FontCustom
sudo gem install fontcustom

# WOFF Code
wget http://people.mozilla.com/~jkew/woff/woff-code-latest.zip
unzip woff-code-latest.zip -d sfnt2woff && cd sfnt2woff && make && sudo mv sfnt2woff /usr/local/bin/

# EOT Utils
wget http://www.w3.org/Tools/eot-utils/eot-utilities-1.1.tar.gz
tar -zxf eot-utilities-1.1.tar.gz
cd eot-utilities-1.1 && ./configure && make && sudo make install
```

Note: When using a system with python 3, you may need to patch font custom if they haven't merged python 3 support code yet: https://github.com/FontCustom/fontcustom/pull/276



Credits:
=======

Turtle by: https://thenounproject.com/unrecognized/
