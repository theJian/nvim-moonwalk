.PHONY: test
test:
	nvim --clean --headless --cmd 'set rtp+=$(CURDIR)' -l test/test.lua
