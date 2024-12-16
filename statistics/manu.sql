SELECT start, end, COUNT(*) count
FROM (SELECT start, end
FROM (SELECT LEFT(personId,4) start,LEFT(end_date,4) end,personId
FROM Results
INNER JOIN Competitions ON Competitions.id = Results.competitionId
ORDER BY end_date DESC) a
GROUP BY personId) a
GROUP BY start, end
ORDER BY start, end