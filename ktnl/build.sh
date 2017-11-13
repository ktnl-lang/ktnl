#!/usr/bin/env bash
echo "Begin build"
# DIR=$(cd "$(dirname "${BASH_SOURCE[0]}" )" && pwd )
# a=$(ls -d ~/.konan/ko* | tail -n 1)
export PATH=$PATH

if [ x$TARGET == x ]; then
case "$OSTYPE" in
  darwin*)  TARGET=macbook ;;
  linux*)   TARGET=linux ;;
  msys*)    TARGET=mingw ;;
  *)        echo "unknown: $OSTYPE" && exit 1;;
esac
fi
echo $TARGET;
var=CFLAGS_${TARGET}
CFLAGS=${!var}
var=LINKER_ARGS_${TARGET}
LINKER_ARGS=${!var}
var=COMPILER_ARGS_${TARGET}
COMPILER_ARGS=${!var} # add -opt for an optimized build.

mkdir -p ./build/c_interop/
mkdir -p ./build/bin/

konanc $COMPILER_ARGS -target $TARGET ./src/main/kotlin \
       -o ./build/bin/ktnl || exit 1
echo "Artifact path is $DIR/build/bin/ktnl.kexe"
