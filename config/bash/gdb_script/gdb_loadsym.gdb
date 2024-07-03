define l_optee
symbol-file ~/codebase/optee/optee/optee_os/out/arm/core/tee.elf
add-symbol-file ~/codebase/optee/optee/trusted-firmware-a/build/qemu/debug/bl1/bl1.elf
add-symbol-file ~/codebase/optee/optee/trusted-firmware-a/build/qemu/debug/bl2/bl2.elf
add-symbol-file ~/codebase/optee/optee/trusted-firmware-a/build/qemu/debug/bl31/bl31.elf
add-symbol-file ~/codebase/optee/optee/u-boot/u-boot $u_boot_addr
add-symbol-file ~/codebase/optee/optee/linux/vmlinux $linux_addr
end
