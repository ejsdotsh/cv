.DEFAULT_GOAL := cv


.PHONY: cv
cv:
	latexmk -xelatex -outdir=. $(filter-out $@,$(MAKECMDGOALS))

.PHONY: luacv
luacv:
	latexmk -lualatex -outdir=. $(filter-out $@,$(MAKECMDGOALS))

.PHONY: clean
clean:
	@rm -f *.aux
	@rm -f *.fdb*
	@rm -f *.fls
	@rm -f *.log
	@rm -f *.xdv
	@rm -f *.out
