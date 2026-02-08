-- Bihar Election 2025 – SQL Analytics Case Study --

-- INTERMEDIATE LEVEL --

-- Q.6 Find the winner of each constituency.

SELECT *
FROM 
	(SELECT Candidate_Name, 
	Constituency_Name, 
	Total_Votes, 
	ROW_NUMBER() OVER(PARTITION BY Constituency_Name ORDER BY Total_Votes DESC) AS Row_num,
	Vote_Percentage
	FROM bihar_election_results) AS SubQuery
WHERE Row_num = 1;



-- Q.7 What is the winning margin for each constituency?

WITH RANKED AS (
    SELECT Constituency_Name,
    Candidate_Name,
    Party,
    Total_Votes,
    ROW_NUMBER() OVER (PARTITION BY Constituency_Name ORDER BY Total_Votes DESC) AS rn
    FROM bihar_election_results)

SELECT 
    r1.Constituency_Name,
    r1.Candidate_Name AS Winner,
    r2.Candidate_Name AS Runnerup,
    r1.Party AS Winning_Party,
    r1.Total_Votes AS Winner_Votes,
    r2.Total_Votes AS RunnerUp_Votes,
    (r1.Total_Votes - r2.Total_Votes) AS Winning_Margin
FROM ranked r1
JOIN ranked r2
    ON r1.Constituency_Name = r2.Constituency_Name
   AND r1.rn = 1
   AND r2.rn = 2
ORDER BY Winning_Margin DESC;



-- Q.8 Which candidates lost by the smallest margin?

WITH RANKED AS (
    SELECT Constituency_Name,
    Candidate_Name,
    Party,
    Total_Votes,
    ROW_NUMBER() OVER (PARTITION BY Constituency_Name ORDER BY Total_Votes DESC) AS rn
    FROM bihar_election_results)

SELECT
    r2.Constituency_Name,
    r2.Candidate_Name AS Losser,
    r2.Party AS Lossing_Party,
    r2.Total_Votes AS Losser_Votes,
    (r1.Total_Votes - r2.Total_Votes) AS Lossing_Margin
FROM ranked r1
JOIN ranked r2
    ON r1.Constituency_Name = r2.Constituency_Name
   AND r1.rn = 1
   AND r2.rn = 2
ORDER BY Lossing_Margin ASC
LIMIT 5;



-- Q.9 What is the vote share (%) of each party across the entire dataset?

SELECT
    Party,
    SUM(Total_Votes) AS Party_Total_Votes,
    ROUND((SUM(Total_Votes) * 100.0) / (SELECT SUM(Total_Votes) FROM bihar_election_results),2) 
    AS Vote_Share_Percentage
FROM bihar_election_results
GROUP BY Party
ORDER BY Vote_Share_Percentage DESC;



-- Q.10 Compare EVM votes vs Postal votes: Which constituency has the highest % of postal votes?

SELECT Constituency_Name, Postal_Votes, Total_Votes,(Postal_Votes  * 100) / Total_Votes AS PostalVotes_Percent
FROM bihar_election_results
ORDER BY PostalVotes_Percent DESC;

