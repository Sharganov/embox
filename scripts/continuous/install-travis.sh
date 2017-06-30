TEMPLATE="$1"

case $TEMPLATE in
arm/*)
  sudo apt-get install -qq gcc-arm-embedded  
  sudo apt-get install -qq qemu qemu-system
  ;;
x86/*)
  sudo apt-get install -qq gcc-arm-embedded
  sudo apt-get install -qq gcc-multilib
  sudo apt-get install -qq qemu qemu-system
  ;;
microblaze/*)
  wget https://github.com/embox/crosstool/releases/download/2.28-6.3.0-7.12/microblaze-elf-toolchain.tar.bz2
  tar axf microblaze-elf-toolchain.tar.bz2
  export PATH=$PATH:microblaze-elf-toolchain/bin/
  ;;
sparc/*)
  wget https://github.com/embox/crosstool/releases/download/2.28-6.3.0-7.12/sparc-elf-toolchain.tar.bz2
  tar axf sparc-elf-toolchain.tar.bz2
  export PATH=$PATH:sparc-elf-toolchain/bin/
  ;;
mipc/*)
  wget https://github.com/embox/crosstool/releases/download/2.28-6.3.0-7.12/mipc-elf-toolchain.tar.bz2
  tar axf mipc-elf-toolchain.tar.bz2
  export PATH=$PATH:$PWD"/mipc-elf-toolchain/bin/"
	echo $PWD
	echo $PATH
  ;;
ppc/*)
  wget https://github.com/embox/crosstool/releases/download/2.28-6.3.0-7.12/powerpc-elf-toolchain.tar.bz2
  tar axf powerpc-elf-toolchain.tar.bz2
  export PATH=$PATH:powerpc-elf-toolchain/bin/
  ;;
esac
