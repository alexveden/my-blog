.PHONY: local

LOCALSITE := jekyll-gitbook
local:
	@echo "\nMaking local web-site..."
	# rm -Rf $(LOCALSITE)/_pages || exit 0
	# rm -Rf $(LOCALSITE)/_posts || exit 0
	# rm $(LOCALSITE)/_config.yml || exit 0
	# cd $(LOCALSITE) && git pull && git fetch origin && git reset --hard origin/master 
	# rm $(LOCALSITE)/_config.yml || exit 0
	# rm -Rf $(LOCALSITE)/_pages || exit 0
	# rm -Rf $(LOCALSITE)/_posts || exit 0
	# ln -s $(shell pwd)/_pages/ $(LOCALSITE)/_pages 
	# ln -s $(shell pwd)/_posts/ $(LOCALSITE)/_posts 
	# ln -s $(shell pwd)/_config.yml $(LOCALSITE)/_config.yml 
	bundle exec jekyll serve


