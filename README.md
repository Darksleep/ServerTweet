
# ServerTweet
Needing or whant your server to send out tweet if service whent down then use ServerTweet 
whanting to now how to make best cup of coffee then why are you here get out!

### what you need
  - brain or higly trained tech monkey
  - wget
  - any linux os (only been tested on debian)
  - root access user with same rights as root
  - twitter account
  - nano (think it come's installed on most linux os)

### Installation
### if you got sudo installed do following
```sh
sudo su 
```
Nicly done!
now we install
### Installation
twidge
```sh
apt-get install twidge
twidge setup
```
just follow what it says you do great
next script installing
```sh
cd /var
mkdir twitter-feed
cd twitter-feed
wget https://raw.githubusercontent.com/Darksleep/ServerTweet/master/servertweet.sh
chmod +x servertweet.sh
crontab -e
0   *   *   *   * /var/twitter-feed/servertweet.sh
```

editing servertweet.sh to add name of your service
```sh
nano /var/twitter-feed/servertweet.sh
###edit the following
service=Replace me with just your service name i.e apache2 no spaces
email=your_email i.e person@earth.com
###stop editing

if you followed this right and i was not so tired we might got it working tell if i messed up open to you 

### Todos
Must read when i have awaken from the dead. i.e me very tired
