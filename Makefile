# Do not edit this file. It is managed by “skeleton”.
# For more informations: https://github.com/JosefFriedrich-shell/skeleton

test:
	@echo "PATH: $(PATH)"
	@echo
	@echo "PWD: $(shell pwd)"
	@echo

	./test/lib/test-runner.sh

readme:
	./test/lib/render-readme.sh > README.md
	cat README.md

sync_skeleton:
	wget -O sync-skeleton.sh https://raw.githubusercontent.com/JosefFriedrich-shell/skeleton/master/sync-skeleton.sh
	chmod a+x sync-skeleton.sh
	./sync-skeleton.sh
	rm -f sync-skeleton.sh

.PHONY: test sync_skeleton readme