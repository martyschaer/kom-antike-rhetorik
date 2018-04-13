slides:
	pandoc -t beamer slides.md -o slides.pdf --template templates/beamer.tex
	mupdf slides.pdf
handout:
	pandoc handout.md -o handout.pdf --template templates/handout.tex
	mupdf handout.pdf
all: slides handout

clean:
	rm slides.pdf
	rm handout.pdf
