# Notes

# ZFS pool setup on SSD

- zpool properties
  - `ashift=12` still the generally optimal setting
- ZFS properties
  - `recordsize=256K` for bulk storage, this is a maximum, not a minimum / set
  - filename sanity: `utf8only=on`, `normalization=formD`
  - `compression=lz4` is good even for uncompressable data

```
sudo zpool create -o ashift=12 -O recordsize=256K -O relatime=on -O utf8only=on -O normalization=formD -O compression=lz4 {name} [raidz1] {disks}
```

# Encrypted ZFS dataset setup

```
sudo zfs create -o encryption=on -o keylocation=prompt -o keyformat=passphrase {dataset}
```
