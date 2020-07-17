PREFIX = $(DESTDIR)/usr/local

default: check

check: 
	shellcheck dyhj

install:
	mkdir -p $(PREFIX)/bin/
	cp dyhj $(PREFIX)/bin/

uninstall:
	$(RM) $(PREFIX)/bin/dyhj
