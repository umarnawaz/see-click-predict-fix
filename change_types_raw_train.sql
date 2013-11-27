set search_path to kaggle_see_click_predict_fix;

\d raw_train

-- alter table raw_train alter column id type int using id::int;

alter table raw_train alter column latitude type float using latitude::float;
alter table raw_train alter column longitude type float using longitude::float;
alter table raw_train alter column num_votes type int using num_votes::int;
alter table raw_train alter column num_comments type int using num_comments::int;
alter table raw_train alter column num_views type int using num_views::float;
alter table raw_train alter column created_time type timestamp using created_time::timestamp;
