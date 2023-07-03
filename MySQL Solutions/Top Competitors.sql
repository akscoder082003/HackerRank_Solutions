-- Julia just finished conducting a coding contest, and she needs your help assembling the leaderboard! 
-- Write a query to print the respective hacker_id and name of hackers who achieved full scores for more than one challenge. 
-- Order your output in descending order by the total number of challenges in which the hacker earned a full score. 
-- If more than one hacker received full scores in same number of challenges, then sort them by ascending hacker_id.

select hackers.hacker_id, hackers.name from hackers
join submissions on hackers.hacker_id = submissions.hacker_id
join challenges on submissions.challenge_id = challenges.challenge_id
join difficulty on challenges.difficulty_level = difficulty.difficulty_level
where submissions.score = difficulty.score
group by hackers.hacker_id, hackers.name having count(*) > 1
order by count(*) desc, hackers.hacker_id;