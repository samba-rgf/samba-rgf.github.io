.PHONY: all
all: docs/index.html docs/impressum.html docs/jobs.html docs/datenschutz.html

docs/%.html: _content/%.html _template/head.html _template/foot.html
	@mkdir -p _build/
	cat _template/head.html $< _template/foot.html > $@
