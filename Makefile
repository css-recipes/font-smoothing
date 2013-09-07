 define ensure_no_output_by_default
    if [ -z "`sass tests/no-output.scss`" ]; \
    then \
        echo "✔ '@import \"index\";' don't output anything."; \
        exit 0; \
    else \
        echo "✗ '@import \"index\";' should output anything by default."; \
        exit 1; \
    fi
endef 

all: clean install css

clean:
	-@rm index.css 2>/dev/null || true
	@echo "✔ Defaut CSS deleted"

install:
	@bower install

css: tests/output.scss
	@sass tests/output.scss index.css
	@echo "✔ Default CSS created"

test: index.css
	@$(call ensure_no_output_by_default)
	@diff tests/output.expected.css index.css
	@echo "✔ Defaut CSS is equal to expectations"
