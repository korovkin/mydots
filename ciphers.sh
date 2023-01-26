export CIPHER=aes-256-cbc
alias enc_stream="gzip -f | openssl enc -${CIPHER} -salt -a"
alias dec_stream="openssl enc -d -${CIPHER} -salt -a | gunzip - "

# RSA:
alias korovkin_dec="base64 -D | openssl rsautl -decrypt -inkey ~/.ssh/korovkin.key"
alias korovkin_enc="openssl rsautl -encrypt -inkey ~/.ssh/korovkin.pub.key.txt -pubin | base64"

