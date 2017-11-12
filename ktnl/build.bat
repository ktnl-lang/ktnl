echo %path%
rm -r build
mkdir build
konanc -target mingw src/main/kotlin -o build/ktnl
echo "Artifact path is $DIR/build/ktnl.exe"