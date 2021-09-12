# UserLAnd-Assets-Ubuntu
A repository for holding Ubuntu specific assets for UserLAnd

For pre-requisites, I run this on an Ubuntu box with these packages installed: 
binfmt-support qemu qemu-user-static gzip

After cloning this repo, you simply do the following...

`sudo ./scripts/buildArch.sh $desiredArch` 

where `desiredArch` can be `arm`, `arm64`, `x86`, `x86_64`
`all` does not mean all of the previous.  It just relates to the files under assets/all
