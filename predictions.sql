set search_path to kaggle_see_click_predict_fix;

drop table votes_predictions_float cascade;
drop table views_predictions_float cascade;
drop table comments_predictions_float cascade;

create table votes_predictions_float(labels int,predictions float);
create table views_predictions_float(labels int,predictions float);
create table comments_predictions_float(labels int,predictions float);

\copy votes_predictions_float from votes.labels_predictions
\copy views_predictions_float from views.labels_predictions
\copy comments_predictions_float from comments.labels_predictions

create view predictions_labels as 
(select p.num_comments as prediction,l.num_comments as label
from comments_predictions_float pl
left join comments_counts p on p.id = cast(pl.predictions as int)
left join comments_counts l on l.id = pl.labels) union all
(select p.num_views as prediction,l.num_views as label
from views_predictions_float pl
left join views_counts p on cast(pl.predictions as int) = p.id
left join views_counts l on pl.labels = l.id) union all
(select p.num_votes as prediction,l.num_votes as label
from votes_predictions_float pl
left join votes_counts p on cast(pl.predictions as int) = p.id
left join votes_counts l on pl.labels = l.id);

select 
sqrt(sum(squared_ln_error(prediction,label))/
(select count(*) from predictions_labels))
from predictions_labels;
