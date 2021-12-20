-- LeetCode: 178. Rank Scores

select score, `rank`
from (select score, dense_rank() over(order by score desc) as `rank`
      from Scores) as score_rank
order by `rank`;
