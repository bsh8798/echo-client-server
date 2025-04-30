.PHONY : tc ts uc us clean install uninstall android-install android-uninstall

all: tc ts uc us

tc:
	cd tc; make; cd ..

ts:
	cd ts; make; cd ..

clean:
	cd tc; make clean; cd ..
	cd ts; make clean; cd ..

install:
	sudo cp bin/tc /usr/local/sbin
	sudo cp bin/ts /usr/local/sbin

uninstall:
	sudo rm /usr/local/sbin/tc /usr/local/sbin/ts /usr/local/sbin/uc /usr/local/sbin/us

