set search_path to kaggle_see_click_predict_fix;

drop view votes_train;
drop view comments_train;
drop view views_train;

create view votes_train as select
cast(num_votes as text) || ' | s ' || replace(description,':',' ') 
from raw_train;
create view comments_train as select
cast(num_comments as text) || ' | s ' || replace(description,':',' ') 
from raw_train;
create view views_train as select
cast(num_views as text) || ' | s ' || replace(description,':',' ') 
from raw_train;

\copy (select * from votes_train) to 'votes_train.vw'
\copy (select * from comments_train) to 'comments_train.vw'
\copy (select * from views_train) to 'views_train.vw'
