PREFIX = /usr
MANDIR = $(PREFIX)/share/man

all:
	@echo Run \'make install\' to install BFFetch.

install:
	@mkdir -p $(DESTDIR)$(PREFIX)/bin
	@mkdir -p $(DESTDIR)$(MANDIR)/man1
	@cp -p bffetch $(DESTDIR)$(PREFIX)/bin/bffetch
	@cp -p bffetch.1 $(DESTDIR)$(MANDIR)/man1
	@chmod 755 $(DESTDIR)$(PREFIX)/bin/bffetch

uninstall:
	@rm -rf $(DESTDIR)$(PREFIX)/bin/bffetch
	@rm -rf $(DESTDIR)$(MANDIR)/man1/bffetch.1*
