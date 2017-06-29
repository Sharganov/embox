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
  sudo apt-get install -qq microblaze-elf-gcc
  ;;
sparc/*)
  sudo apt-get install -qq gcc-arm-embedded
  sudo apt-get install -qq gcc-multilib
  sudo apt-get install -qq u-boot-tools
  sudo apt-get install -qq qemu qemu-system
  wget https://github.com/embox/crosstool/releases/download/2.28-6.3.0-7.12/sparc-elf-toolchain.tar.bz2
  tar axf sparc-elf-toolchain.tar.bz2
  export PATH=$PATH:sparc-elf-toolchain.tar.bz2/bin
  ;;
mipc/*)
  sudo apt-get install -qq mipc-elf-gcc
  ;;
ppc/*)
  sudo apt-get install -qq ppc-elf-gcc
  ;;
esac
