set search_path to kaggle_see_click_predict_fix;

select train_test,id,'latitude===' || cast(latitude as text) from raw_features
union all
select train_test,id,'longitude===' || cast(longitude as text) from raw_features
union all
select train_test,id,summary from raw_features union all
select train_test,id,description from raw_features union all
select train_test,id,source from raw_features union all
select train_test,id,tag_type from raw_features union all
select train_test,id,'tag_type===' || tag_type from raw_features union all
select train_test,id,'source_underscores===' || replace(source,' ','_') 
from raw_features union all
select train_test,id,'description_underscores===' || replace(description,' ','_')
from raw_features union all
select train_test,id,'summary_underscores===' || replace(summary,' ','_')
from raw_features union all
select train_test,id,'created_time===' || 
replace(cast(created_time as text),' ','_')
from raw_features union all

create view text_features as
simply text
underscores
tagcolumn to each word
trim white spaces
num words
average word length
text character length

;
create view float_features as
decimal places
place in buckets by histograms
;

create view time_features as

select train_test,id,'extract_day===' || extract(day from created_time) 
from raw_features
extractions --- extract
century
day day of month
dow day of week
doy day of year
epoch - precisions, buckets by histogram
hour
minute
month
microseconds
milliseconds
second
quarter
week number of the week in the year
year
date_trunc ----
microseconds
milliseconds
second
minute
hour
day
week
month
quarter
year
decade
century
millenium
;
-- nion all
-- select train_test,id,'===' || extract( from created_time) 
-- from raw_features union all
-- select train_test,id,'===' || extract( from created_time) 
-- from raw_features union all
-- select train_test,id,'===' || extract( from created_time) 
-- from raw_features union all
-- select train_test,id,'===' || extract( from created_time) 
-- from raw_features union all
-- select train_test,id,'===' || extract( from created_time) 
-- from raw_features union all
-- select train_test,id,'===' || extract( from created_time) 
-- from raw_features union all
-- select train_test,id,'===' || extract( from created_time) 
-- from raw_features union all
-- select train_test,id,'===' || extract( from created_time) 
-- from raw_features union all
-- select train_test,id,'===' || extract( from created_time) 
-- from raw_features union all
-- select train_test,id,'===' || extract( from created_time) 
-- from raw_features union all
-- select train_test,id,'===' || extract( from created_time) 
-- from raw_features union all
-- select train_test,id,'===' || extract( from created_time) 
-- from raw_features union all
-- select train_test,id,'===' || extract( from created_time) 
-- from raw_features union all
-- select train_test,id,'===' || extract( from created_time) 
-- from raw_features union all



-- select id,'vw==description==' || word as feature from description_words
-- union all
-- select id,'vw==summary==' || word as feature from summary_words
-- union all
-- select id,'vw==descriptionlower==' || lower(word) as feature 
-- from description_words
-- union all
-- select id,'vw==summarylower==' || lower(word) as feature from summary_words
-- union all
-- select id,'vw==descriptionlowernoperiod==' || replace(lower(word),'.$','')
-- from description_words
-- union all
-- select id,'vw==summarylowernoperiod==' || replace(lower(word),'.$','')
-- from summary_words

-- union all

-- select id,'vw==day==' || cast(date_part as text) from raw_train_day union all
-- select id,'vw==daytrunc==' || 
-- replace(replace(cast(date_trunc as text),':','-'),' ','-')
-- from raw_train_day_trunc union all
-- -- select id, from raw_train_description_length union all
-- -- select id, from raw_train_description_lower union all
-- select id,'vw==dow==' || cast(date_part as text) from raw_train_dow union all
-- select id,'vw==doy==' || cast(date_part as text) from raw_train_doy union all
-- select id,'vw==epoch==' || cast(date_part as text) from raw_train_epoch union all
-- select id,'vw==hour==' || cast(date_part as text) from raw_train_hour union all
-- select id,'vw==hourtrunc==' || 
-- replace(replace(cast(date_trunc as text),':','-'),' ','-') 
-- from raw_train_hour_trunc union all
-- select id,'vw==minute==' || cast(date_part as text) from raw_train_minute union all
-- select id,'vw==minutetrunc==' || 
-- replace(replace(cast(date_trunc as text),':','-'),' ','-') 
-- from raw_train_minute_trunc union all
-- select id,'vw==month==' || cast(date_part as text) from raw_train_month union all
-- select id,'vw==monthtrunc==' || 
-- replace(replace(cast(date_trunc as text),':','-'),' ','-') 
-- from raw_train_month_trunc union all
-- select id,'vw==quarter==' || cast(date_part as text) 
-- from raw_train_quarter union all
-- select id,'vw==quartertrunc==' || 
-- replace(replace(cast(date_trunc as text),':','-'),' ','-') 
-- from raw_train_quarter_trunc union all
-- -- select id, from raw_train_source_length union all
-- -- select id, from raw_train_source_lower union all
-- -- select id, from raw_train_summary_length union all
-- -- select id, from raw_train_summary_lower union all
-- -- select id, from raw_train_tag_type_length union all
-- -- select id, from raw_train_tag_type_lower union all
-- -- select id, from raw_train_trimmed_description union all
-- -- select id, from raw_train_trimmed_source union all
-- -- select id, from raw_train_trimmed_summary union all
-- -- select id, from raw_train_trimmed_tag_type union all
-- select id,'vw==week==' || cast(date_part as text) from raw_train_week union all
-- select id,'vw==weektrunc==' || 
-- replace(replace(cast(date_trunc as text),':','-'),' ','-') 
-- from raw_train_week_trunc union all
-- select id,'vw==year==' || cast(date_part as text) from raw_train_year union all
-- select id,'vw==yeartrunc==' || 
-- replace(replace(cast(date_trunc as text),':','-'),' ','-') 
-- from raw_train_year_trunc union all
-- -- select id, from rt_description_notabs union all
-- -- select id, from rt_source_notabs union all
-- -- select id, from rt_summary_notabs union all
-- select id,'vw==tagtypenotabs==' || replace from rt_tagtype_notabs
-- -- select id, from source union all
-- union all

-- select id,'vw==longitude5==' || longitude from long_lat_5 union all
-- select id,'vw==longitude4==' || longitude from long_lat_4 union all
-- select id,'vw==longitude3==' || longitude from long_lat_3 union all

-- select id,'vw==latitude5==' || latitude from long_lat_5 union all
-- select id,'vw==latitude4==' || latitude from long_lat_4 union all
-- select id,'vw==latitude3==' || latitude from long_lat_3 union all

-- select id,'vw==longlat5==' || longitude || '==' || latitude from long_lat_5 union all
-- select id,'vw==longlat4==' || longitude || '==' || latitude from long_lat_4 union all
-- select id,'vw==longlat3==' || longitude || '==' || latitude from long_lat_3 union all

-- select id,description from raw_train union all
-- select id,summary from raw_train union all
-- select id,'source==' || source from raw_train union all
-- select id,'tag_type==' || tag_type from raw_train union all
-- select id,'latitude==' || cast(latitude as text) from raw_train union all
-- select id,'longitude==' || cast(longitude as text) from raw_train union all

-- select id,'description_length==' || cast(char_length(description) as text) 
-- from raw_train union all
-- select id,'summary_length==' || cast(char_length(summary) as text) 
-- from raw_train union all
-- select id,'source_length==' || cast(char_length(source) as text) 
-- from raw_train union all
-- select id,'tag_type_length==' || cast(char_length(tag_type) as text) 
-- from raw_train union all

-- select id,'==rare_tag=='
-- from raw_train,raw_train_tag_type_counts 
-- where raw_train.tag_type = raw_train_tag_type_counts.tag_type 
-- and raw_train_tag_type_counts.count < 1000 union all

-- select id,'==no_description=='
-- from raw_train r
-- where char_length(description) = 0 union all

-- select id,'==rare_summary_length=='
-- from raw_train r,summary_lengths_counts s
-- where char_length(r.summary) = s.char_length
-- and s.count < 4000 union all


-- select * from skos_description union allsdf
-- select * from skos_summary

