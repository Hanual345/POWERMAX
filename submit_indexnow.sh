#!/usr/bin/env bash
# Submit URL directly to Bing, Yandex, and other search engines using IndexNow
KEY="311e644d5251ae87"
HOST="powermax.lumithic.online"
URL="https://powermax.lumithic.online/"

echo "$KEY" > /home/hanual/POWERMAX/${KEY}.txt

echo "Submitting $URL to IndexNow API..."
curl -s -X POST "https://api.indexnow.org/indexnow" \
     -H "Content-Type: application/json; charset=utf-8" \
     -d '{
       "host": "'"$HOST"'",
       "key": "'"$KEY"'",
       "keyLocation": "https://'"$HOST"'/'"$KEY"'.txt",
       "urlList": [
         "https://'"$HOST"'/"
       ]
     }' -w "\nHTTP Status: %{http_code}\n"
