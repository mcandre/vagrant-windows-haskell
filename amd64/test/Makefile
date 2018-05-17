.PHONY: clean-vm clean-vagrant-metadata

all: test

test: test-boot test-compile test-cabal

test-boot:
	vagrant up

test-compile: test-boot
	vagrant ssh --no-tty -c "powershell -Command \"cd C:\\vagrant; ghc -o hello.exe Hello.hs; .\hello\""

test-cabal: test-boot
	vagrant ssh --no-tty -c "powershell -Command \"cabal update; cabal install shake; where.exe shake\""

clean-vm:
	-vagrant destroy -f

clean-vagrant-metadata:
	-rm -rf .vagrant

clean: clean-vm clean-vagrant-metadata
