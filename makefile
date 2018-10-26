survey.pdf:
	pandoc -s survey.md -t latex -o survey.pdf

clean:
	- rm *.pdf
