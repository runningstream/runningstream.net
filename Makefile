OUTNAME := $(shell date +runningstream.net_%Y_%m_%d)

all:
	rm -rf public
	hugo
	mv public ${OUTNAME}
	tar cfj ${OUTNAME}.tar.bz2 ${OUTNAME}
	rm -rf ${OUTNAME}
