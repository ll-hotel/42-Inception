cd ~/data/

if [ "$(ls wordpress)" = "" ]; then
	wget https://wordpress.org/wordpress-6.7.1.zip
	unzip wordpress-6.7.1.zip
	rm wordpress-6.7.1.zip
fi
