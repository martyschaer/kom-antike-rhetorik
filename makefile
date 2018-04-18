slides:
	pandoc -t beamer slides.md -o slides.pdf --template templates/beamer.tex --pdf-engine=xelatex --slide-level 2
	mupdf slides.pdf
handout:
	pandoc handout.md -o handout.pdf --template templates/handout.tex
	mupdf handout.pdf
notes:
	pandoc notes.md -o notes.pdf --template templates/handout.tex
	mupdf notes.pdf
all: slides handout notes

clean:
	rm -f slides.pdf
	rm -f handout.pdf
	rm -f notes.pdf
