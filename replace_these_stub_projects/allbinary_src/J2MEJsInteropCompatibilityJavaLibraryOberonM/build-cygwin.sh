#!/usr/bin/env bash

# Compiles the Oberon+ modules the Oberon+ converter generated with OBXMC to C and then gcc. OBXMC compiles every module of the build together and reports a failed module only by not writing its C file, so
# the hand written runtime, the Oberon+ sources of the dependencies (META-INF/oberon/src of their jars),
# and this project are copied to one tree first. This project's sources are written to <output>/src.
# Arguments: source_dir output_dir object_dir dependency_dir runtime_dir compiler "flags" artifactId fail_on_error

set -uo pipefail

export PATH="/usr/local/bin:/usr/bin:/bin:$PATH"

source_dir="$(cygpath -u "$1")"
output_dir="$(cygpath -u "$2")"
object_dir="$(cygpath -u "$3")"
dependency_dir="$(cygpath -u "$4")"
runtime_dir="$(cygpath -u "$5")"
compiler="$(cygpath -u "$6")"
read -r -a compiler_flags <<< "$7"
artifact="$8"
fail_on_error="${9:-true}"

if [ ! -d "$source_dir" ]; then
    echo "No Oberon+ sources: $source_dir"
    exit 0
fi

rm -rf "$output_dir" "$object_dir"
tree="$object_dir/tree"
mkdir -p "$output_dir/src" "$tree"
cp -R "$source_dir/." "$output_dir/src/"
cp "$runtime_dir"/*.obx "$tree/"
if [ -d "$dependency_dir/src" ]; then
    cp -R "$dependency_dir/src/." "$tree/"
fi
cp -R "$source_dir/." "$tree/"

cd "$tree" || exit 1
c_dir="$object_dir/c"
mkdir -p "$c_dir"
files=()
while IFS= read -r file; do files+=("$(cygpath -w "$tree/$file")"); done < <(find . -type f -name '*.obx' | sed 's|^\./||' | sort)
echo "Oberon+ modules: $(find "$source_dir" -type f -name '*.obx' | wc -l)"
"$compiler" "${compiler_flags[@]}" "-out=$(cygpath -w "$c_dir")" "${files[@]}" > "$object_dir/obxmc.log" 2>&1
status=$?
missing=""
while IFS= read -r file; do
    module="$(basename "$file" .obx)"
    if [ ! -f "$c_dir/$module.c" ]; then missing="$missing $module"; fi
done < <(find "$source_dir" -type f -name '*.obx')
if [ "$status" != "0" ] || [ -n "$missing" ]; then
    cat "$object_dir/obxmc.log"
    echo "OBXMC did not compile:$missing (status $status)"
    echo "Oberon+ build failed: $artifact" >&2
    if [ "$fail_on_error" = "true" ]; then
        exit 1
    fi
    exit 0
fi
cd "$c_dir" || exit 1
if gcc -O2 --std=c99 -fwrapv -w ./*.c -lm -o "jcheck_$artifact" 2>&1; then
    echo "Oberon+ compiled: $artifact"
    exit 0
fi
echo "Oberon+ build failed: $artifact" >&2
if [ "$fail_on_error" = "true" ]; then
    exit 1
fi
exit 0
