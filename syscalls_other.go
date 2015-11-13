// +build !linux,!darwin

package water

func newTAP(ifName string) (ifce *Interface, err error) {
	panic("water: tap interface not implemented on this platform")
}

func newTUN(ifName string) (ifce *Interface, err error) {
	panic("water: tap interface not implemented on this platform")
}

func setPersistent(fd uintptr, persistent bool) error {
	panic("water: setPersistent not implemented on this platform")
}

