default:   lowell-prop.tex
	latex lowell-prop
	dvipdf lowell-prop

clean:
	rm lowell-prop.aux
	rm lowell-prop.dvi
	rm lowell-prop.log
