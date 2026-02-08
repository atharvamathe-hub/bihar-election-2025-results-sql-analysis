-- Bihar Election 2025 – SQL Analytics Case Study --

-- BASIC LEVEL -- 

-- Q.1 How many total constituencies are present in the dataset?

SELECT COUNT(DISTINCT Constituency_Name) AS Total_Constituencies
FROM bihar_election_results;



-- Q.2 List all candidates contesting in each constituency.

SELECT Candidate_Name, Constituency_Name
FROM bihar_election_results;

SELECT COUNT(Candidate_Name)
FROM bihar_election_results;



-- Q.3 Which party has fielded how many candidates?

SELECT Party, COUNT(Candidate_Name) as Candidate_Per_Party
FROM bihar_election_results
GROUP BY Party 
ORDER BY Candidate_Per_Party DESC;



-- Q.4 What is the total number of votes (EVM + Postal) received in each constituency?

SELECT  Constituency_Name, SUM(Total_Votes) AS TotalVoteRecevies_Per_Constituencies
FROM bihar_election_results
GROUP BY Constituency_Name;



-- Q.5 Who are the top 5 candidates with the highest total votes?

SELECT  Candidate Name, Total Votes
FROM bihar_election_results
ORDER BY Total_Votes DESC
LIMIT 5;
