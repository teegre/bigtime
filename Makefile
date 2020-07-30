PROGNAME  ?= bigtime
PREFIX    ?= /usr
BINDIR    ?= $(PREFIX)/bin
SHAREDIR  ?= $(PREFIX)/share
MANDIR    ?= $(SHAREDIR)/man/man1
CONFIGDIR ?= /etc

MANPAGE    = $(PROGNAME).1
ASSETDIR   = $(CONFIGDIR)/$(PROGNAME)

.PHONY: install
install: src/$(PROGNAME).out
	install -d  $(DESTDIR)$(BINDIR)

	install -m755  src/$(PROGNAME).out $(DESTDIR)$(BINDIR)/$(PROGNAME)

	install -Dm644 digits/*   -t $(DESTDIR)$(ASSETDIR)/digits
	install -Dm644 snd/*      -t $(DESTDIR)$(ASSETDIR)/snd
	install -Dm644 icn/*      -t $(DESTDIR)$(ASSETDIR)/icn
	install -Dm644 $(MANPAGE)  -t $(DESTDIR)$(MANDIR)
	install -Dm644 LICENSE    -t $(DESTDIR)$(SHAREDIR)/licenses/$(PROGNAME)
	install -Dm644 README.md  -t $(DESTDIR)$(SHAREDIR)/doc/$(PROGNAME)

	rm src/$(PROGNAME).out

.PHONY: uninstall
uninstall:
	rm $(DESTDIR)$(BINDIR)/$(PROGNAME)
	rm -rf $(DESTDIR)$(ASSETDIR)
	rm $(DESTDIR)$(MANDIR)/$(MANPAGE)
	rm -rf $(DESTDIR)$(SHAREDIR)/licenses/$(PROGNAME)
	rm -rf $(DESTDIR)$(SHAREDIR)/doc/$(PROGNAME)
