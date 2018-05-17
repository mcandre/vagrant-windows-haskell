# vagrant-windows-haskell: a Vagrant box for building Haskell binaries for Windows

# WARNING

Some packages such as happy and clock appear to be broken in i386 AKA x86 Windows. This limits portability for HLint and Shake respectively, which depend on these broken packages.

# VAGRANT CLOUD

* https://app.vagrantup.com/mcandre/boxes/vagrant-windows-haskell-amd64
* https://app.vagrantup.com/mcandre/boxes/vagrant-windows-haskell-i386

# EXAMPLE

```console
$ cd amd64/test
$ vagrant up
$ vagrant ssh --no-tty -c "powershell -Command \"cd C:\\vagrant; ghc -o hello.exe Hello.hs; .\hello\""
Hello World!
```

# RUNTIME REQUIREMENTS

* [Vagrant](https://www.vagrantup.com)
* The [VirtualBox](https://www.virtualbox.org) hypervisor provider

## Recommended

* [vagrant-rsync-back](https://github.com/smerrill/vagrant-rsync-back) assists in copying artifacts from the guest to the host

# BUILDTIME REQUIREMENTS

* [Vagrant](https://www.vagrantup.com)
* The [VirtualBox](https://www.virtualbox.org) hypervisor provider
* [make](https://www.gnu.org/software/make/)

# EXPORT

```console
$ sh -c "cd amd64 && make vagrant-windows-haskell-amd64.box"
$ sh -c "cd i386 && make vagrant-windows-haskell-i386.box"
```
