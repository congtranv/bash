clear
# syntax: ./video.sh nameOFvideo
FILENAME=$1
if [[ "$FILENAME" == "" ]]; then
  echo "syntax error: ./video.sh nameOFvideo"
  exit
fi

ffmpeg -an -f video4linux2 -s 960x720 -r 10 -i /dev/video0 -vcodec mpeg4 -vtag DIVX ~/Videos/$FILENAME.avi
