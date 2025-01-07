-- Question 1
SELECT *
FROM facilities;

-- Question2
SELECT name, membercost
FROM facilities;

-- Question 3
SELECT name
FROM facilities
WHERE membercost > 0;

-- Question 4
SELECT facid, name, membercost, monthlymaintenance
FROM facilities
WHERE membercost > 0
  AND membercost < (monthlymaintenance / 50);

-- Question 5
SELECT *
FROM facilities
WHERE name LIKE '%Tennis%';

-- Question 6
SELECT *
FROM facilities
WHERE facid IN (1, 5);

-- Question 7
SELECT memid, surname, firstname, joindate
FROM members
WHERE joindate >= '2012-09-01';

-- Question 8
SELECT DISTINCT surname
FROM members
ORDER BY surname
LIMIT 10;

-- Question 9
SELECT COUNT(*)
FROM facilities
WHERE guestcost >= 10;

-- Question 10
SELECT facid, SUM(slots) AS total_slots
FROM bookings
WHERE starttime BETWEEN '2012-09-01' AND '2012-10-01'
GROUP BY facid
ORDER BY SUM(slots);

-- Question 11
SELECT facid, SUM(slots) AS total_slots
FROM bookings
GROUP BY facid
HAVING SUM(slots) > 1000
ORDER BY facid;

-- Question 12
SELECT starttime, f.name
FROM bookings AS b
         INNER JOIN facilities f ON f.facid = b.facid
WHERE date(starttime) = '2012-09-21'
  AND f.name ILIKE '%tennis court%'
ORDER BY starttime;

-- Question 13
SELECT b.starttime
FROM bookings AS b
         INNER JOIN members m ON m.memid = b.memid
WHERE m.firstname = 'David'
  AND m.surname = 'Farrell'
ORDER BY b.starttime;





