bin=$PREFIX/bin
dir=$(pwd)
normal='\e[0m'
if [ -e $bin/git ]; then 
  echo -e "\u001b[32mSkip install git but already installed!"
else 
  echo -e "\u001b[31mInstaling \u001b[31mgit!"
  pkg install nodejs -y
  echo -e "\u001b[32mDone install git!"
fi

echo -e "\u001b[33mChecking instalation!"

check() {
  if [ -e $bin/git ]; then
    echo -e "\u001b[32mGit already installed!"
  else
    echo -e "\u001b[31mGit not installed!!, install manualy using `pkg install git -y` or `apt install git -y` and after that, type `bash install2.sh`"
    exit 1
  fi
}

check
echo -e "\u001b[32mDone checking instalation!" 

echo -e "\u001b[36mCloning reposito!"
git clone https://github.com/5GVckyy/SteadyWhatsApp.git SteadyWhatsApp
if [ -d $dir/SteadyWhatsApp ]; then
  echo -e "\u001b[36mDone clone repository!"
else
  echo -e "\u001b[31mFail to clone repository!"
  exit 1
fi

echo -e "\u001b[36mChange working directory!"
cd SteadyWhatsApp
main_dir=$(pwd)
if [ $main_dir != $dir ]; then
  echo -e "\u001b[36mDone change working directory!"
  echo -e "\u001b[36mInstalling bot!"
  bash install.sh
else 
  echo -e "\u001b[31mFail to change working directory!!"
  exit 1
fi
