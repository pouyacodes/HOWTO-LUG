MAIN := User-Group-HOWTO.tex

all: out
	xelatex -output-directory=out/ ${MAIN}
	xelatex -output-directory=out/ ${MAIN}

out:
	mkdir -p out

view:
	okular out/*.pdf

clean:
	rm -rf out

