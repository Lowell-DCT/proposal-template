default:   lowell-prop.tex
	latex lowell-prop
	dvipdf lowell-prop

dct-proposal-template.tar:	 lowell-prop.cls  lowell-prop.tex  pluto-small.eps  Makefile
	mkdir dct-proposal-template
	cp lowell-prop.tex dct-proposal-template/.
	cp lowell-prop.cls dct-proposal-template/.
	cp pluto-small.eps dct-proposal-template/.
	cp Makefile dct-proposal-template/.
	tar -cvf dct-proposal-template.tar dct-proposal-template
	rm -rf dct-proposal-template