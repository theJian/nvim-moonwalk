.PHONY: test
test:
	nvim --clean --headless --cmd 'set rtp+=$(CURDIR)' --cmd 'set background=dark' -l test/test.lua
