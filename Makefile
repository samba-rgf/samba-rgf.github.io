.PHONY: all
all: _build/index.html _build/impressum.html _build/jobs.html

_build/%.html: _content/%.html _template/head.html _template/foot.html
	@mkdir -p _build/
	cat _template/head.html $< _template/foot.html > $@
