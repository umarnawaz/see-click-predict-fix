echo '' >> loss.info
date >> loss.info

rm *.cache
vw -d votes_train.vw -f votes.model 2>votes.info -b 24 --passes 1000 -c -q nn --ngram 2 
vw -d comments_train.vw -f comments.model 2>comments.info -b 24 --passes 1000 -c -q nn --ngram 2 
vw -d views_train.vw -f views.model 2>views.info -b 24 --passes 1000 -c -q nn --ngram 2

cat votes.info | grep 'average loss' |sed 's/average loss/votes/g' >> loss.info
cat comments.info | grep 'average loss' |sed 's/average loss/comments/g' >> loss.info
cat views.info | grep 'average loss' |sed 's/average loss/views/g' >> loss.info
date >> loss.info

tail -n 20 loss.info
