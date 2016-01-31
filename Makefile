NAME=git
all: ${NAME}.pdf

${NAME}.pdf: ${NAME}.md Makefile
	pandoc ${NAME}.md -t beamer --latex-engine=xelatex --slide-level=1 --template=template.tex -o git.pdf

clean:
	rm -f *.pdfsync
	rm -rf *~ *.tmp

.PHONY:
	clean all
