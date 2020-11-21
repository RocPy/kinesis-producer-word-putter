#!/bin/bash

echo $AWS_ACCESS_KEY_ID
echo $AWS_SECRET_ACCESS_KEY

#python sample_kinesis_wordputter.py -s WordsStream -f /stream-content/ -p 3
python sample_kinesis_wordputter.py -s WordsStream -w wobble -w acid -w writing -w ignore -w ducks -w weary -w wonderful -w replace -w plot -w doctor -w muddled -w old-fashioned -w summer -w absorbing -w meek -w hydrant -w phone -w beds -w insurance -w succinct -p 3