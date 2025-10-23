SELECT
    id AS question_id,
    COALESCE(REGEXP_EXTRACT_ALL(tags, r'[^|]+'), []) AS tags_arr,
    answer_count,
    accepted_answer_id,
    view_count,
    score,
    creation_date
FROM {{ source('stackoverflow', 'posts_questions') }}