

CREATE VIEW long_lat_3 AS
    SELECT raw_train.id, "substring"((raw_train.longitude)::text, 1, 4) AS longitude, "substring"((raw_train.latitude)::text, 1, 3) AS latitude FROM raw_train;


CREATE VIEW long_lat_4 AS
    SELECT raw_train.id, "substring"((raw_train.longitude)::text, 1, 5) AS longitude, "substring"((raw_train.latitude)::text, 1, 4) AS latitude FROM raw_train;


CREATE VIEW long_lat_5 AS
    SELECT raw_train.id, "substring"((raw_train.longitude)::text, 1, 6) AS longitude, "substring"((raw_train.latitude)::text, 1, 5) AS latitude FROM raw_train;


CREATE VIEW raw_test_day AS
    SELECT raw_test.id, date_part('day'::text, raw_test.created_time) AS date_part FROM raw_test;


CREATE VIEW raw_test_day_trunc AS
    SELECT raw_test.id, date_trunc('day'::text, raw_test.created_time) AS date_trunc FROM raw_test;

CREATE VIEW raw_test_trimmed_description AS
    SELECT raw_test.id, btrim(raw_test.description) AS btrim FROM raw_test;

CREATE VIEW raw_test_description_length AS
    SELECT raw_test_trimmed_description.id, char_length(raw_test_trimmed_description.btrim) AS char_length FROM raw_test_trimmed_description;

CREATE VIEW raw_test_description_lower AS
    SELECT raw_test_trimmed_description.id, lower(raw_test_trimmed_description.btrim) AS lower FROM raw_test_trimmed_description;

CREATE VIEW raw_test_dow AS
    SELECT raw_test.id, date_part('dow'::text, raw_test.created_time) AS date_part FROM raw_test;

CREATE VIEW raw_test_doy AS
    SELECT raw_test.id, date_part('doy'::text, raw_test.created_time) AS date_part FROM raw_test;




CREATE VIEW raw_test_epoch AS
    SELECT raw_test.id, date_part('epoch'::text, raw_test.created_time) AS date_part FROM raw_test;




CREATE VIEW raw_test_hour AS
    SELECT raw_test.id, date_part('hour'::text, raw_test.created_time) AS date_part FROM raw_test;




CREATE VIEW raw_test_hour_trunc AS
    SELECT raw_test.id, date_trunc('hour'::text, raw_test.created_time) AS date_trunc FROM raw_test;




CREATE TABLE raw_test_id_ordered (
    id integer NOT NULL,
    kaggle_id integer
);




CREATE SEQUENCE raw_test_id_ordered_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;




ALTER SEQUENCE raw_test_id_ordered_id_seq OWNED BY raw_test_id_ordered.id;



CREATE VIEW raw_test_minute AS
    SELECT raw_test.id, date_part('minute'::text, raw_test.created_time) AS date_part FROM raw_test;




CREATE VIEW raw_test_minute_trunc AS
    SELECT raw_test.id, date_trunc('minute'::text, raw_test.created_time) AS date_trunc FROM raw_test;




CREATE VIEW raw_test_month AS
    SELECT raw_test.id, date_part('month'::text, raw_test.created_time) AS date_part FROM raw_test;




CREATE VIEW raw_test_month_trunc AS
    SELECT raw_test.id, date_trunc('month'::text, raw_test.created_time) AS date_trunc FROM raw_test;




CREATE VIEW raw_test_quarter AS
    SELECT raw_test.id, date_part('quarter'::text, raw_test.created_time) AS date_part FROM raw_test;




CREATE VIEW raw_test_quarter_trunc AS
    SELECT raw_test.id, date_trunc('quarter'::text, raw_test.created_time) AS date_trunc FROM raw_test;




CREATE VIEW raw_test_trimmed_source AS
    SELECT raw_test.id, btrim(raw_test.source) AS btrim FROM raw_test;




CREATE VIEW raw_test_source_length AS
    SELECT raw_test_trimmed_source.id, char_length(raw_test_trimmed_source.btrim) AS char_length FROM raw_test_trimmed_source;




CREATE VIEW raw_test_source_lower AS
    SELECT raw_test_trimmed_source.id, lower(raw_test_trimmed_source.btrim) AS lower FROM raw_test_trimmed_source;




CREATE VIEW raw_test_trimmed_summary AS
    SELECT raw_test.id, btrim(raw_test.summary) AS btrim FROM raw_test;




CREATE VIEW raw_test_summary_length AS
    SELECT raw_test_trimmed_summary.id, char_length(raw_test_trimmed_summary.btrim) AS char_length FROM raw_test_trimmed_summary;




CREATE VIEW raw_test_summary_lower AS
    SELECT raw_test_trimmed_summary.id, lower(raw_test_trimmed_summary.btrim) AS lower FROM raw_test_trimmed_summary;




CREATE TABLE raw_test_tag_type_counts (
    tag_type text,
    count bigint
);




CREATE VIEW raw_test_trimmed_tag_type AS
    SELECT raw_test.id, btrim(raw_test.tag_type) AS btrim FROM raw_test;




CREATE VIEW raw_test_tag_type_length AS
    SELECT raw_test_trimmed_tag_type.id, char_length(raw_test_trimmed_tag_type.btrim) AS char_length FROM raw_test_trimmed_tag_type;




CREATE VIEW raw_test_tag_type_lower AS
    SELECT raw_test_trimmed_tag_type.id, lower(raw_test_trimmed_tag_type.btrim) AS lower FROM raw_test_trimmed_tag_type;




CREATE VIEW raw_test_week AS
    SELECT raw_test.id, date_part('week'::text, raw_test.created_time) AS date_part FROM raw_test;




CREATE VIEW raw_test_week_trunc AS
    SELECT raw_test.id, date_trunc('week'::text, raw_test.created_time) AS date_trunc FROM raw_test;




CREATE VIEW raw_test_year AS
    SELECT raw_test.id, date_part('year'::text, raw_test.created_time) AS date_part FROM raw_test;




CREATE VIEW raw_test_year_trunc AS
    SELECT raw_test.id, date_trunc('year'::text, raw_test.created_time) AS date_trunc FROM raw_test;




CREATE VIEW raw_train_day AS
    SELECT raw_train.id, date_part('day'::text, raw_train.created_time) AS date_part FROM raw_train;




CREATE VIEW raw_train_day_trunc AS
    SELECT raw_train.id, date_trunc('day'::text, raw_train.created_time) AS date_trunc FROM raw_train;




CREATE VIEW raw_train_trimmed_description AS
    SELECT raw_train.id, btrim(raw_train.description) AS btrim FROM raw_train;




CREATE VIEW raw_train_description_length AS
    SELECT raw_train_trimmed_description.id, char_length(raw_train_trimmed_description.btrim) AS char_length FROM raw_train_trimmed_description;




CREATE VIEW raw_train_description_lower AS
    SELECT raw_train_trimmed_description.id, lower(raw_train_trimmed_description.btrim) AS lower FROM raw_train_trimmed_description;




CREATE VIEW raw_train_dow AS
    SELECT raw_train.id, date_part('dow'::text, raw_train.created_time) AS date_part FROM raw_train;




CREATE VIEW raw_train_doy AS
    SELECT raw_train.id, date_part('doy'::text, raw_train.created_time) AS date_part FROM raw_train;




CREATE VIEW raw_train_epoch AS
    SELECT raw_train.id, date_part('epoch'::text, raw_train.created_time) AS date_part FROM raw_train;




CREATE VIEW raw_train_hour AS
    SELECT raw_train.id, date_part('hour'::text, raw_train.created_time) AS date_part FROM raw_train;




CREATE VIEW raw_train_hour_trunc AS
    SELECT raw_train.id, date_trunc('hour'::text, raw_train.created_time) AS date_trunc FROM raw_train;




CREATE VIEW raw_train_labels AS
    SELECT raw_train.id, raw_train.num_votes, raw_train.num_views, raw_train.num_comments FROM raw_train;




CREATE VIEW raw_train_minute AS
    SELECT raw_train.id, date_part('minute'::text, raw_train.created_time) AS date_part FROM raw_train;




CREATE VIEW raw_train_minute_trunc AS
    SELECT raw_train.id, date_trunc('minute'::text, raw_train.created_time) AS date_trunc FROM raw_train;




CREATE VIEW raw_train_month AS
    SELECT raw_train.id, date_part('month'::text, raw_train.created_time) AS date_part FROM raw_train;




CREATE VIEW raw_train_month_trunc AS
    SELECT raw_train.id, date_trunc('month'::text, raw_train.created_time) AS date_trunc FROM raw_train;




CREATE SEQUENCE raw_train_num_votes_counts_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;




ALTER SEQUENCE raw_train_num_votes_counts_id_seq OWNED BY votes_counts.id;



CREATE VIEW raw_train_quarter AS
    SELECT raw_train.id, date_part('quarter'::text, raw_train.created_time) AS date_part FROM raw_train;




CREATE VIEW raw_train_quarter_trunc AS
    SELECT raw_train.id, date_trunc('quarter'::text, raw_train.created_time) AS date_trunc FROM raw_train;




CREATE TABLE raw_train_source_counts (
    source text,
    count bigint
);




CREATE VIEW raw_train_trimmed_source AS
    SELECT raw_train.id, btrim(raw_train.source) AS btrim FROM raw_train;




CREATE VIEW raw_train_source_length AS
    SELECT raw_train_trimmed_source.id, char_length(raw_train_trimmed_source.btrim) AS char_length FROM raw_train_trimmed_source;




CREATE VIEW raw_train_source_lower AS
    SELECT raw_train_trimmed_source.id, lower(raw_train_trimmed_source.btrim) AS lower FROM raw_train_trimmed_source;




CREATE VIEW raw_train_trimmed_summary AS
    SELECT raw_train.id, btrim(raw_train.summary) AS btrim FROM raw_train;




CREATE VIEW raw_train_summary_length AS
    SELECT raw_train_trimmed_summary.id, char_length(raw_train_trimmed_summary.btrim) AS char_length FROM raw_train_trimmed_summary;




CREATE VIEW raw_train_summary_lower AS
    SELECT raw_train_trimmed_summary.id, lower(raw_train_trimmed_summary.btrim) AS lower FROM raw_train_trimmed_summary;




CREATE TABLE raw_train_tag_type_counts (
    tag_type text,
    count bigint
);




CREATE VIEW raw_train_trimmed_tag_type AS
    SELECT raw_train.id, btrim(raw_train.tag_type) AS btrim FROM raw_train;




CREATE VIEW raw_train_tag_type_length AS
    SELECT raw_train_trimmed_tag_type.id, char_length(raw_train_trimmed_tag_type.btrim) AS char_length FROM raw_train_trimmed_tag_type;




CREATE VIEW raw_train_tag_type_lower AS
    SELECT raw_train_trimmed_tag_type.id, lower(raw_train_trimmed_tag_type.btrim) AS lower FROM raw_train_trimmed_tag_type;




CREATE VIEW raw_train_week AS
    SELECT raw_train.id, date_part('week'::text, raw_train.created_time) AS date_part FROM raw_train;




CREATE VIEW raw_train_week_trunc AS
    SELECT raw_train.id, date_trunc('week'::text, raw_train.created_time) AS date_trunc FROM raw_train;




CREATE VIEW raw_train_year AS
    SELECT raw_train.id, date_part('year'::text, raw_train.created_time) AS date_part FROM raw_train;




CREATE VIEW raw_train_year_trunc AS
    SELECT raw_train.id, date_trunc('year'::text, raw_train.created_time) AS date_trunc FROM raw_train;




CREATE VIEW rt_description_notabs AS
    SELECT raw_train.id, replace(raw_train.description, '\t'::text, ' '::text) AS replace FROM raw_train;




CREATE VIEW rt_source_notabs AS
    SELECT raw_train.id, replace(raw_train.source, '\t'::text, ' '::text) AS replace FROM raw_train;




CREATE VIEW rt_summary_notabs AS
    SELECT raw_train.id, replace(raw_train.summary, '\t'::text, ' '::text) AS replace FROM raw_train;




CREATE VIEW rt_tagtype_notabs AS
    SELECT raw_train.id, replace(raw_train.tag_type, '\t'::text, ' '::text) AS replace FROM raw_train;




CREATE VIEW rtt_description_notabs AS
    SELECT raw_test.id, replace(raw_test.description, '\t'::text, ' '::text) AS replace FROM raw_test;




CREATE VIEW rtt_source_notabs AS
    SELECT raw_test.id, replace(raw_test.source, '\t'::text, ' '::text) AS replace FROM raw_test;




CREATE VIEW rtt_summary_notabs AS
    SELECT raw_test.id, replace(raw_test.summary, '\t'::text, ' '::text) AS replace FROM raw_test;




CREATE VIEW rtt_tagtype_notabs AS
    SELECT raw_test.id, replace(raw_test.tag_type, '\t'::text, ' '::text) AS replace FROM raw_test;




CREATE TABLE skos_description (
    id integer,
    "?column?" text
);




CREATE TABLE skos_summary (
    id integer,
    "?column?" text
);




CREATE VIEW source AS
    SELECT replace(raw_train_source_counts.source, ' '::text, '_'::text) AS replace FROM raw_train_source_counts;




CREATE TABLE submission_comments (
    id integer NOT NULL,
    prediction double precision
);




CREATE SEQUENCE submission_comments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;




ALTER SEQUENCE submission_comments_id_seq OWNED BY submission_comments.id;



CREATE TABLE submission_views (
    id integer NOT NULL,
    prediction double precision
);




CREATE TABLE submission_votes (
    id integer NOT NULL,
    prediction double precision
);




CREATE VIEW submission_ids AS
    SELECT r.kaggle_id AS id, c.prediction AS comments, v.prediction AS votes, vi.prediction AS views FROM (((raw_test_id_ordered r LEFT JOIN submission_views vi ON ((vi.id = r.id))) LEFT JOIN submission_votes v ON ((v.id = r.id))) LEFT JOIN submission_comments c ON ((c.id = r.id)));




CREATE VIEW submission_labels AS
    SELECT i.id, vi.num_views, v.num_votes, c.num_comments FROM (((submission_ids i LEFT JOIN votes_counts v ON (((v.id)::double precision = i.votes))) LEFT JOIN views_counts vi ON (((vi.id)::double precision = i.views))) LEFT JOIN comments_counts c ON (((c.id)::double precision = i.comments)));




CREATE TABLE submission_skos_description (
    id integer,
    "?column?" text
);




CREATE TABLE submission_skos_summary (
    id integer,
    "?column?" text
);




CREATE TABLE submission_test_description_words (
    id integer,
    "position" integer,
    word text
);




CREATE TABLE submission_test_source_words (
    id integer,
    "position" integer,
    word text
);




CREATE TABLE submission_test_summary_words (
    id integer,
    "position" integer,
    word text
);




CREATE TABLE submission_test_tagtype_words (
    id integer,
    "position" integer,
    word text
);




CREATE SEQUENCE submission_views_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;




ALTER SEQUENCE submission_views_id_seq OWNED BY submission_views.id;



CREATE SEQUENCE submission_votes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;




ALTER SEQUENCE submission_votes_id_seq OWNED BY submission_votes.id;



CREATE TABLE summary_lengths_counts (
    char_length integer,
    count bigint
);




CREATE TABLE summary_words (
    id integer,
    "position" integer,
    word text
);




CREATE VIEW test_long_lat_3 AS
    SELECT raw_test.id, "substring"((raw_test.longitude)::text, 1, 4) AS longitude, "substring"((raw_test.latitude)::text, 1, 3) AS latitude FROM raw_test;




CREATE VIEW test_long_lat_4 AS
    SELECT raw_test.id, "substring"((raw_test.longitude)::text, 1, 5) AS longitude, "substring"((raw_test.latitude)::text, 1, 4) AS latitude FROM raw_test;




CREATE VIEW test_long_lat_5 AS
    SELECT raw_test.id, "substring"((raw_test.longitude)::text, 1, 6) AS longitude, "substring"((raw_test.latitude)::text, 1, 5) AS latitude FROM raw_test;




CREATE SEQUENCE views_counts_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;




ALTER SEQUENCE views_counts_id_seq OWNED BY views_counts.id;
























