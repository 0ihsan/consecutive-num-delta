PREFIX=/usr/local

all: cdelta

cdelta:
	cc -o cdelta main.c

install: cdelta
	mkdir -p ${PREFIX}/bin
	install cdelta ${PREFIX}/bin/cdelta

uninstall:
	rm -rf ${PREFIX}/bin/cdelta

clean:
	rm -rf cdelta
