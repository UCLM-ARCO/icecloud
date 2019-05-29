# -*- mode: makefile-gmake; coding: utf-8 -*-
DESTDIR ?= ~
SLICEDIR = $(shell python3 -c "import Ice; print(Ice.getSliceDir())")

all:

install:
	install -vd $(DESTDIR)/usr/bin
	install -v -m 555 factory.py $(DESTDIR)/usr/bin/icecloud-server-factory
	install -vd $(DESTDIR)/$(SLICEDIR)/IceCloud
	install -v -m 444 ServerFactory.ice $(DESTDIR)/$(SLICEDIR)/IceCloud/

clean:
	$(RM) -r example/tmp
