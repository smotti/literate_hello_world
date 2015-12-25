WEB = hello_world.w

all: doc1 doc2 hello_world

hello_world.pdf: hello_world.tex
	pdflatex $<

doc1: hello_world.pdf

doc2:
	# We need to run the commands twice because of the hyperlinks. Because we
	# run doc1 before this we know the required files to do so exist already.
	nuweb -o $(WEB)
	pdflatex hello_world.tex

hello_world.tex: $(WEB)
	nuweb -l -o $<

hello_world.go: $(WEB)
	nuweb -l -t $<

hello_world: hello_world.go
	go fmt $<
	go build -o $@ $<

clean:
	rm -f hello_world hello_world.pdf hello_world.tex hello_world.aux\
		hello_world.toc hello_world.log hello_world.go hello_world.out
