all:
	fontcustom compile src --debug --output=./dist --name=ogs-font --font-em=1000 --font-ascent=800 --font-descent=200
	# for 1.0.0
	#fontcustom compile fontnova --output=./ --font-name=fontnova --debug

clean:
	rm -f dist/ogs-font-*.woff
	rm -f dist/ogs-font-*.eot
	rm -f dist/ogs-font-*.ttf

deps: arch-deps woff-code eot-utils 
	gem install fontcustom

arch-deps:
	sudo pacman -S fontforge
	aurget -S ttfautohint

woff-code:
	wget http://people.mozilla.com/~jkew/woff/woff-code-latest.zip
	unzip woff-code-latest.zip -d sfnt2woff && cd sfnt2woff && make && sudo mv sfnt2woff /usr/local/bin/

eot-utils:
	wget http://www.w3.org/Tools/eot-utils/eot-utilities-1.1.tar.gz
	tar -zxf eot-utilities-1.1.tar.gz
	cd eot-utilities-1.1 && ./configure && make && sudo make install
