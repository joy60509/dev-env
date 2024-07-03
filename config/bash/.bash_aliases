source ~/script/cscope/cscope.sh
source ~/script/git/git.sh

# Common tool alias
alias q="cd ../"
alias qq="cd ../../"
alias qqq="cd ../../../"
alias qqqq="cd ../../../../"

# Path manager
alias x_optee="cd ~/codebase/optee/optee"

# Build command alias
alias b_optee='f(){ make -j16 "${1}" CFG_CORE_ASLR=n DEBUG=1; unset -f f;};f'

# Toolchain alias
alias x_optee_gdb="~/codebase/optee/optee/toolchains/aarch64/bin/aarch64-none-linux-gnu-gdb"
alias x_optee_objdump="~/codebase/optee/optee/toolchains/aarch64/bin/aarch64-none-linux-gnu-objdump"

# Math tool alias
alias h2b='f(){ echo "${1}" | xxd -p -r | xxd -b | cut -c11-47; unset -f f;};f'
alias h2d='f(){ echo $(("${1}")); unset -f f;};f'
alias d2h="printf \"0x%x\n\" ${1}"
