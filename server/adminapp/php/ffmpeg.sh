clear
path=/Volumes/Macintosh\ HD/Users/stef/Sites/Lab/STLWebViewer/server/adminapp/php/models/$1/$2
rename=1
extension=jpg
videosize=640x480
paddingtop=294
paddingbottom=200
fps=24
videoname="../$(basename "$path")"
cd "$path"
#cd ${PATH}:"/Users/taylor/Desktop/test me"
if [ $rename == 1 ]; then
        echo 'renaming files to incremental (5 digits)'
        a=1
        for i in *.$extension; do
          echo $i
          new=$(printf "pic%05d.$extension" ${a})
          mv ${i} ${new}
          let a=a+1
        done
fi
#/usr/local/bin/ffmpeg -f image2 -r $fps -i pic%05d.$extension -croptop $paddingtop -cropbottom $paddingbottom -vcodec libx264 $videoname-cropped.mp4
/usr/local/bin/ffmpeg -f image2 -r $fps -i pic%05d.$extension -vcodec libx264 $videoname-cropped.mp4
/usr/local/bin/ffmpeg -i $videoname-cropped.mp4 -s $videosize -b 3000k -vcodec libx264 $videoname.mp4

#qt-faststart $videoname-$fps.mp4 $videoname.mp4

rm $videoname-cropped.mp4
