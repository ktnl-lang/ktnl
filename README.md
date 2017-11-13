# KtNL



Kotlin Native for Lisp


CI|status
:---|:---:
Travis CI|[![Build Status](https://travis-ci.org/ktnl-lang/ktnl.svg?branch=master)](https://travis-ci.org/zxj5470/ktnl-gradle)
CodeShip|[ ![Codeship Status for zxj5470/ktnl-gradle](https://app.codeship.com/projects/c811a1c0-a761-0135-bce0-229ed7207fef/status?branch=master)](https://app.codeship.com/projects/255803)

[![GitHub language count](https://img.shields.io/badge/language-Kotlin--Native-orange.svg)]() 

[![GitHub language count](https://img.shields.io/badge/Powerd%20by-JetBrains%20CLion-blue.svg)]() [![GitHub language count](https://img.shields.io/badge/Powerd%20by-JetBrains%20Intellij%20Idea-red.svg)]() [![GitHub language count](https://img.shields.io/badge/Powerd%20by-Visual%20Studio%20Code-blue.svg)]()
<!-- @import "[TOC]" {cmd="toc" depthFrom=1 depthTo=6 orderedList=false} -->
<!-- code_chunk_output -->

* [KtNL](#ktnl)
	* [Platform](#platform)
	* [Build and Run](#build-and-run)
		* [Build](#build)
	* [Dependencies](#dependencies)
	* [Progress](#progress)
	* [CI build scripts](#ci-build-scripts)
		* [Travis CI](#travis-ci)
		* [Codeship CI](#codeship-ci)

<!-- /code_chunk_output -->


## Platform
**Run in OS X or Linux.**  
(Actually Windows can also build and run it. But you can't build by CLion in Windows.Just try Idea or VS Code ~ )

**Windows(CLion) has not been supported presently.**  
`(JetBrains: “What？”)`

But you can build and run in Intellij idea.

## Build and Run
- make sure you have installed the `kotlin-native compiler` and `konanc` is in your path. If not, please download [kotlin-native/releases] first.(https://github.com/JetBrains/kotlin-native/releases)  (current version is `0.4`)

-  bash :
```bash
git clone https://github.com/ktnl-lang/ktnl

cd ktnl-gradle/ktnl

./build.sh

./ktnl.kexe ../kt.ktnl
```

### Build
- git clone the repositry and open with `Intellij Idea` or `Visual Studio Code` at root `ktnl` dir.

  - Idea (building recommand) : run gradle task or run commandLine `./gradlew buildInLinux` 
  - VSCode (coding recommand. For CLion and Idea haven't got source code, even though CLion has `.knm` file in which you can see function declares.Just git clone `kotlin-native` and open into a same workspace in latest VS Code) 
  - CLion (EAP 2017.3 or latest. Just open at `ktnl` submodule dir, using CMake to build)

## Dependencies
- `konanc` (Of course)
- `kotlin-stdlib`

## Progress
There are so many things to do, while I have just finished these as follows.

```scheme
(define a 2333)
(define ice-1000 "Zython")
```
outputs:
```kotlin
{a: Int = 23333, ice1000: String = "Zython"}
```

## CI build scripts

### Travis CI

[.travis.yml](https://github.com/zxj5470/ktnl-gradle/blob/master/.travis.yml)

### Codeship CI
- build
```bash
jdk_switcher home oraclejdk8
jdk_switcher use oraclejdk8
wget https://github.com/JetBrains/kotlin-native/releases/download/v0.4/kotlin-native-linux-0.4.tar.gz -O /tmp/kotlin-native-linux-0.4.tar.gz
tar -xvf /tmp/kotlin-native-linux-0.4.tar.gz
export PATH=$PATH:$PWD/kotlin-native-linux-0.4/bin/
cd ~/src/github.com/zxj5470/ktnl-gradle
chmod u+x ./gradlew
./gradlew buildInLinux
```
- test
```bash
cd ~/src/github.com/zxj5470/ktnl-gradle/ktnl
./build/bin/ktnl.kexe kt.ktnl
```
