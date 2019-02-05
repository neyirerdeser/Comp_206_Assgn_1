# first I made the codebook into variable so both lowercase and uppercase letters are on the same line (altought they are seperate still)
code=`cat $1` # ==> ARGUEMNT FROM CONSOLE Q2/codebook.txt

# then split the line into seperate variables for lowercase and uppercase letters
lower=`cut -f1 -d" " <<< $code`
upper=`cut -f2 -d" " <<< $code`

# and merge them into one word
letters="$lower$upper"

# I made anther String for the alphabet for more simple code in tr command
alphabet="abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"

# finally change all the letters in the alhabet with the new ones from codebook
cat $2 | tr $alphabet $letters # ==> ARGUEMNT FROM CONSOLE Q2/test_input1.txt
