# start with the same making the codebook into a word process as the q2_encrypt
code=`cat $1` # ==> ARGUEMNT FROM CONSOLE Q2/codebook.txt

lower=`cut -f1 -d" " <<< $code`
upper=`cut -f2 -d" " <<< $code`

letters="$lower$upper"

alphabet="abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"

# then the decryption (tr other way aorund this time)
cat $2 | tr $letters $alphabet # ==> ARGUEMNT FROM CONSOLE Q2/test_input1_encrypted.txt Q2/secret_message.txt
