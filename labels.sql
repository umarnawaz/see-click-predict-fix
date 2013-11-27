set search_path to kaggle_see_click_predict_fix;

create view votes_labels as select num_votes from raw_train order by id asc;
create view comments_labels as select num_comments from raw_train order by id asc;
create view views_labels as select num_views from raw_train order by id asc;

\copy (select * from votes_labels) to 'votes.labels'
\copy (select * from comments_labels) to 'comments.labels'
\copy (select * from views_labels) to 'views.labels'

