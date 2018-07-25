#!/bin/sh

rate=$(curl -sf https://api.coinmarketcap.com/v1/ticker/cardano/ | jq -r ".[].price_usd")
rate=$(LANG=C printf "%.2f" "$rate")

echo " $rate"