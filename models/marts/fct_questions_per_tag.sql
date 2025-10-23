SELECT
  tag,
  COUNT(*) AS total_questions,
  COUNTIF(accepted_answer_id IS NULL) AS unanswered_questions
FROM {{ ref('int_questions_per_tag') }}
GROUP BY tag
ORDER BY unanswered_questions DESC