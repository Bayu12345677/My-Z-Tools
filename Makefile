rb="bundler install"
py="python setup.py install"

setup:
	bash -c "source build.sh; m"
	eval $(py)
	eval $(rb)
	@echo
	@echo "📦 silakan ketik -> make run"
run:
	bash -c "source build.sh; i"
	./main.out
rp:
	@echo "my kontak : 6285731184377"
