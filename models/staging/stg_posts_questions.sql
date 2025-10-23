SELECT
    id AS question_id,
    tags,
    answer_count,
    accepted_answer_id,
    view_count,
    score,
    creation_date
FROM {{ source('stackoverflow', 'posts_questions') }}