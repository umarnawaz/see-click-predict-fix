psql -d mypersonal -U umar -f train_test.sql

paste -d '' votes.natlog.labels train.features > votes_train.vw
paste -d '' comments.natlog.labels train.features > comments_train.vw
paste -d '' views.natlog.labels train.features > views_train.vw
