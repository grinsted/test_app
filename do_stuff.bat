rem my script
echo Running test
git clone --recursive https://github.com/aseprite/aseprite.git --depth 1
cd aseprite
git pull
git submodule update --init --recursive
choco install cmake -y
$env:Path+=";$Env:ProgramFiles\CMake\bin"; ./makeall.bat