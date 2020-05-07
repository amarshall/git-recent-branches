.PHONY: install

INSTALL ?= install

install:
	mkdir -p ${DESTDIR}${prefix}/bin/
	${INSTALL} -m 0755 bin/git-recent-branches ${DESTDIR}${prefix}/bin/git-recent-branches
