set search_path to kaggle_see_click_predict_fix;

alter table raw_test alter column id type int using id::int;
alter table raw_test alter column latitude type float using latitude::float;
alter table raw_test alter column longitude type float using longitude::float;
alter table raw_test alter column created_time type timestamp using created_time::timestamp;
