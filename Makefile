REPO=$(realpath $(dir $(firstword $(MAKEFILE_LIST))))
SCRIPT_PREFIX=/usr/local/bin

build:
	echo "Nothing to build"

install: build
	cp $(REPO)/polkit/org.feltech.rebootto.policy /usr/share/polkit-1/actions/
	cp $(REPO)/sh/grub-reboot-now $(SCRIPT_PREFIX)
	cp $(REPO)/sh/grub-reboot-options $(SCRIPT_PREFIX)
	chmod 755 $(SCRIPT_PREFIX)/grub-reboot-now
	chmod 755 $(SCRIPT_PREFIX)/grub-reboot-options

uninstall:
	rm /usr/share/polkit-1/actions/org.feltech.rebootto.policy
	rm $(SCRIPT_PREFIX)/grub-reboot-now
	rm $(SCRIPT_PREFIX)/grub-reboot-options


