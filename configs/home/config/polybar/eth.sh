#!bin/dash

curl -s https://api.coinbase.com/v2/prices/ETH-EUR/spot | sed -n 's|.*"amount":"\([^"]*\)".*|\1|p'
