CREATE PROCEDURE testCheck()
    SELECT id, IF (given_answer is NOT NULL,
                    if(correct_answer=given_answer, 'correct', 'incorrect'),'no answer') AS checks
    FROM answers
    ORDER BY id;
