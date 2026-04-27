# Home tools - Terraform

These are single-run scripts to set preferences.

## Further terraform topics

### Enable zswap

Zswap is compressed in-memory swap page handling, good idea in general

Kernel option `zswap.enabled=1`

### Intel graphics power management

Kernel option `i915.enable_psr=0` often fixes issues with freezing or glitching

### Sleep mode

Kernel option `mem_sleep_default=deep` makes sure deep (real) suspend is enabled for longer battery life

### Keypad issues on Framework laptop

Kernel option `psmouse.synaptics_intertouch=1` is a good bet
