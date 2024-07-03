define b_entry
b bl1_main
b bl2_main
b bl31_main
b _start
end

define b_ns_el1_gic
b *($linux_addr + 0x1000)
b *($linux_addr + 0x1080)
b *($linux_addr + 0x1100)
b *($linux_addr + 0x1180)
b *($linux_addr + 0x1200)
b *($linux_addr + 0x1280)
b *($linux_addr + 0x1300)
b *($linux_addr + 0x1380)
b *($linux_addr + 0x1400)
b *($linux_addr + 0x1480)
b *($linux_addr + 0x1500)
b *($linux_addr + 0x1580)
end

