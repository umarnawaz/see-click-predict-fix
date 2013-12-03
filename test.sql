set search_path to kaggle_see_click_predict_fix;

drop view votes_test;
drop view comments_test;
drop view views_test;

create view votes_test as select
' | s ' || replace(description,':',' ') from raw_test order by id asc;
create view comments_test as select
' | s ' || replace(description,':',' ') from raw_test order by id asc;
create view views_test as select
' | s ' || replace(description,':',' ') from raw_test order by id asc;

\copy (select * from votes_test) to 'votes_test.vw'
\copy (select * from comments_test) to 'comments_test.vw'
\copy (select * from views_test) to 'views_test.vw'
