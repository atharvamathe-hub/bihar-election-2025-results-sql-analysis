-- Bihar Election 2025 – SQL Analytics Case Study --

-- ADVANCED LEVEL --

-- Q.11 Which party performed best in terms of constituencies won?

WITH ranked AS (
    SELECT Candidate_Name, 
	Constituency_Name, 
	Total_Votes,
    Party,
	ROW_NUMBER() OVER(PARTITION BY Constituency_Name ORDER BY Total_Votes DESC) AS Row_num,
	Vote_Percentage
	FROM bihar_election_results)

SELECT 
    Party,
    COUNT(*) AS Constituencies_Won
FROM ranked
WHERE Row_num = 1
GROUP BY Party
ORDER BY Constituencies_Won DESC;



-- Q.12 Identify potential “stronghold” constituencies for each party.

WITH RANKED AS (
    SELECT Constituency_Name,
    Candidate_Name,
    Party,
    Total_Votes,
    ROW_NUMBER() OVER (PARTITION BY Constituency_Name ORDER BY Total_Votes DESC) AS Row_num
    FROM bihar_election_results)

SELECT 
    r1.Constituency_Name,
    r1.Candidate_Name AS Winner,
    r2.Candidate_Name AS Runnerup,
    r1.Party AS Winning_Party,
    r1.Total_Votes AS Winner_Votes,
    r2.Total_Votes AS RunnerUp_Votes,
    (r1.Total_Votes - r2.Total_Votes) AS StrongHold_Margin,
    ROUND(((r1.Total_Votes - r2.Total_Votes) * 1.0 / r1.Total_Votes) * 100, 2) AS Margin_Percent  -- we multiply 1.0 to convert the value in decimal otherwise sql will treat as integer
FROM ranked r1
JOIN ranked r2
    ON r1.Constituency_Name = r2.Constituency_Name
   AND r1.Row_num = 1
   AND r2.Row_num = 2
WHERE (r1.Total_Votes - r2.Total_Votes) > (r1.Total_Votes*0.30)



-- Q.13 Analyze NOTA (None of the Above):

-- A)Constituencies with highest NOTA votes

SELECT Constituency_Name, Candidate_Name, Total_Votes
FROM bihar_election_results
WHERE Candidate_Name =  'NOTA'
ORDER BY Total_Votes DESC;



-- B)NOTA vote percentage

SELECT 
    Constituency_Name,
    Total_Votes AS Nota_Votes,
    (Total_Votes * 1.0 / 
          (SELECT SUM(Total_Votes) 
           FROM bihar_election_results b2 
           WHERE b2.Constituency_Name = b1.Constituency_Name)) * 100 
           AS Nota_Percent
FROM bihar_election_results b1
WHERE Candidate_Name = 'NOTA'
ORDER BY Nota_Votes DESC;



-- Q.14 Impact on margin (Did NOTA exceed margin?)

WITH ranked AS (
    SELECT 
        Constituency_Name,
        Candidate_Name,
        Party,
        Total_Votes,
        ROW_NUMBER() OVER (
            PARTITION BY Constituency_Name 
            ORDER BY Total_Votes DESC
        ) AS rn
    FROM bihar_election_results
),
NOTA AS (
    SELECT 
        Constituency_Name,
        Total_Votes AS Nota_Votes
    FROM bihar_election_results
    WHERE Candidate_Name = 'NOTA'
)

SELECT 
    r1.Constituency_Name,
    r1.Candidate_Name AS Winner,
    r2.Candidate_Name AS RunnerUp,
    r1.Total_Votes AS Winner_Votes,
    r2.Total_Votes AS RunnerUp_Votes,
    (r1.Total_Votes - r2.Total_Votes) AS Winning_Margin,
    n.Nota_Votes,
    
    CASE 
        WHEN n.Nota_Votes > (r1.Total_Votes - r2.Total_Votes)
            THEN 'YES — NOTA Exceeded Margin'
        ELSE 
            'NO — NOTA Did Not Exceed Margin'
    END AS Nota_Impact
FROM ranked r1
JOIN ranked r2
    ON r1.Constituency_Name = r2.Constituency_Name
   AND r1.rn = 1
   AND r2.rn = 2
LEFT JOIN NOTA n
    ON r1.Constituency_Name = n.Constituency_Name
ORDER BY Nota_Impact DESC;



-- Q.15 Predict hypothetical winners if postal votes were excluded.

SELECT *
FROM 
	(SELECT Candidate_Name, 
	Constituency_Name,
    EVM_Votes,
	Total_Votes, 
	ROW_NUMBER() OVER(PARTITION BY Constituency_Name ORDER BY EVM_Votes DESC) AS Row_num,
	Vote_Percentage
	FROM bihar_election_results) AS SubQuery
WHERE Row_num = 1
ORDER BY EVM_Votes DESC;