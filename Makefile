all: matrixrain.sh

examples: default.mp4 tiny.mp4 chaotic.mp4 snowy.mp4 dailup.mp4 myeyesarebleeding.mp4

default.mp4: matrixrain.sh
	sh matrixrain.sh default.mp4 120

%.mp4: %.patch matrixrain.sh
	patch matrixrain.sh $< -o - | sh -s $@ 120

.PHONY: all examples
