function co() { g++-10 -std=c++17 -O2 -o $1 $1.cpp -Wall; }

function run() { co $1 && ./$1 & fg; }

function movtogif () {
  tempfile=.mov-to-gif-$(date +"%s").png
  ffmpeg -i $1 -vf "scale=1280:-2" "${1%.mov}-resized.mov"
  ffmpeg -stats -y -i "${1%.mov}-resized.mov" -vf fps=10,palettegen $tempfile
  ffmpeg -stats -i "${1%.mov}-resized.mov" -i $tempfile -filter_complex "fps=10,paletteuse" "${1%.mov}.gif"
  rm $tempfile "${1%.mov}-resized.mov"
}
