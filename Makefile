PKI_PATH=~/workDir/pki
help:
	@less Makefile

.configure:
	@sudo apt update
	@sudo apt install -y strongswan-pki

mkdirs:
	@mkdir $(PKI_PATH)/{cacerts,certs,private}
	@chmod 700 $(PKI_PATH)

create.ca:
	@pki --gen --type rsa --size 4096 --outform pem > $(PKI_PATH)/private/ca-key.pem
