if (apt list -qqi git | grep -q git); then echo GIT is installed.; else sudo apt install git -y; fi
git clone https://thangtc987@github.com/thangtc987/setup.git && cd setup && bash 0_start.sh
