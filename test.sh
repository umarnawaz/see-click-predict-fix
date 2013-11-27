echo 'vw predict'
vw -d test.features -i votes.model -t -p votes.natlog.predictions 2>> test.info
vw -d test.features -i comments.model -t -p comments.natlog.predictions 2>> test.info
vw -d test.features -i views.model -t -p views.natlog.predictions 2>> test.info

echo 'natlog -> exp predictions'
./transform_labels.py exp votes.natlog.predictions >views.predictions
./transform_labels.py exp comments.natlog.predictions >comments.predictions
./transform_labels.py exp views.natlog.predictions >views.predictions

echo 'making submission.csv'
./submission.sh
