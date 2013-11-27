set search_path to kaggle_see_click_predict_fix;

drop view features cascade;

create view features as select
train_test,id,

' | namespace ' || 
replace(summary,':',' ') || ' ' 
|| replace(description,':',' ') || ' '
|| source || ' ' 
|| tag_type || ' ' 
|| cast(latitude as text) || ' ' 
|| cast(longitude as text) || ' '
|| replace(replace(cast(created_time as text),' ','_'),':','_') || ' ' 

|| cast(ceil(latitude) as text) || ' ' 
|| cast(ceil(longitude) as text) || ' '


as feature from raw_features;


create view train_features as select feature from features 
where train_test = 'train' order by id asc;
create view test_features as select feature from features 
where train_test = 'test' order by id asc;

\copy (select * from train_features) to 'train.features'
\copy (select * from test_features) to 'test.features'

