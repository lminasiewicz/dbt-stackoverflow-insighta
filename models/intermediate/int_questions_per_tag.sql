WITH unpacked AS (
  SELECT
    question_id,
    tag
  FROM {{ ref('stg_posts_questions') }},
  UNNEST(tags_arr) AS tag
)

SELECT
  unpacked.tag,
  questions.question_id,
  questions.answer_count,
  questions.accepted_answer_id,
  questions.view_count,
  questions.score,
  questions.creation_date
FROM unpacked
JOIN {{ ref('stg_posts_questions') }} questions
  ON unpacked.question_id = questions.question_id