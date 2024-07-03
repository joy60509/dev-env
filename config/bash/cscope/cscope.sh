
sfind()
{
	if [[ ! -d $1 ]]; then
		return 0
	fi

	for d in $@
	do
		local search_dir=$PWD/$d
		find -P -L $search_dir -name "*.[chS]" -o -name "*.cc" -o -name "*.cpp" -o -name "*.aidl" -o -name "*.java" -o -name "*.xml" -o -name "*.mk" -o -name "*.sh" -o -name "Make*" -o -name "*.ld*"
	done
}

sfind_kernel()
{
	sfind arch/arm64/
	sfind init/
	sfind lib/
	sfind kernel/
	sfind include
	sfind mm/
	sfind drivers/of/
	sfind drivers/clocksource/
	sfind drivers/irqchip/
	sfind drivers/virtio/
	sfind drivers/base/
	sfind drivers/nebula
	sfind drivers/cpuidle

	sfind drivers/tee

}

function create-all-db()
{
	local hash=`echo -n $(pwd -P) | sha256sum | cut -d' ' -f1`
	local base_path="${HOME}/.cscope.vim/${hash}"
	local files_path="${base_path}.files"
	local db_path="${base_path}.db"

	echo "sha256(curdir) = ${hash}"

       	echo "Createing ${files_path}"
       	sfind ./ > ${files_path}

       	echo "Createing ${db_path}"
       	cscope -k -q -b -i ${files_path} -f${db_path}
}

function create-kernel-db()
{
	local hash=`echo -n $(pwd -P) | sha256sum | cut -d' ' -f1`
	local base_path="${HOME}/.cscope.vim/${hash}"
	local files_path="${base_path}.files"
	local db_path="${base_path}.db"

	echo "sha256(curdir) = ${hash}"

	echo "Createing ${files_path}"
	sfind_kernel > ${files_path}

	echo "Createing ${db_path}"
	cscope -k -q -b -i ${files_path} -f${db_path}
}
