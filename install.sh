# #!/bin/bash

declare readonly DEFAULT_INSTALL_DIR="/usr/local/lib/blcc/"
declare readonly BLCC_DIR_R="blcc"
declare readonly UTIL_DIR_R="${BLCC_DIR_R}_util"

declare readonly SCRIPT_DIR=("./script/blcc.sh" "./script/util.sh")

for gs in ${SCRIPT_DIR[@]}; do
	echo $gs
done
