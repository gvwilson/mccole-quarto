# McCole example site
include mccole/mccole.mk

## check-fixtures: run the HTML checker on fixtures
check-fixtures:
	$(LUA) $(BIN)/check-html.lua fixtures/*.html
