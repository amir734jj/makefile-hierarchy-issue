src.install: ${INSTALLSRC}
	mkdir -p result
	for f in ${INSTALLSRC}; do \
		cp -a $$f result/.; \
	done

commit.install: src.install
	echo "finished"

clean:
	rm -rf result
