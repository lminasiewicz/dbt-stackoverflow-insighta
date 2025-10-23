SELECT
    id as answer_id
    parent_id
    score
    creation_date
FROM {{ source('stackoverflow', 'posts_answers') }}