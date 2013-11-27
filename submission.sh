echo 'id,num_views,num_votes,num_comments' > submission.csv
paste test_ids.txt views.predictions votes.predictions comments.predictions |tr '\t' ',' >> submission.csv

