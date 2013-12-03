cp vw_train_test.py remote/

cd remote/

./vw_train_test.py votes_train.vw votes_test.vw votes 47 5 25

./vw_train_test.py views_train.vw views_test.vw views 489 5 25

./vw_train_test.py comments_train.vw comments_test.vw comments 42 5 25

cd ../
