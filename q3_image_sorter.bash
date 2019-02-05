find $1 -type f -exec ls -lrt {} + > sorted.txt
# lists all elements recursively without the foldernames in between then and sorts them by reverse time, so newest can be at the botton

filename=`echo $1 | tr '/' '_'`
# prepares the filename the result image will be saved as using the command line argument by changing /s to _s

awk 'NF>1{print $NF}' sorted.txt > sorted_address.txt
# i couldn't use cut for this because some some files the address was the 10th word and some it was the 11th. Instead this will take the Last word of each line which is the address and make them into a file

IFS=$'\n' read -d '' -r -a images < sorted_address.txt
# make the file with addresses of the pictures into an array

convert ${images[@]} -append $filename.jpg
# merge all the images in the array into one picture, the timeline

rm sorted.txt sorted_address.txt
# delete files that I've created along the way to avoid clutter
