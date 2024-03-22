SELECT * FROM airline;
-- What factors are highly correlated to a satisfied (or dissatisfied) passenger?
	-- predict passenger satisfaction ??? (may need python to do that)
    
 -- wifi service   
SELECT id, `Inflight wifi service`, satisfaction
from airline
ORDER BY satisfaction DESC;

-- departure/ arrival time convenience
SELECT id, `Departure/Arrival time convenient`, satisfaction
from airline
ORDER BY satisfaction DESC;

-- ease of online booking
SELECT id, `Ease of Online booking`, satisfaction
from airline
ORDER BY satisfaction DESC;

-- gate location
SELECT id, `Gate location`, satisfaction
from airline
ORDER BY satisfaction DESC;

-- food and drink
SELECT id, `Food and drink`, satisfaction
from airline
ORDER BY satisfaction DESC;

-- seat comfort
SELECT id, `Seat comfort`, satisfaction
from airline
ORDER BY satisfaction DESC;

-- inflight entertainment
SELECT id, `Inflight entertainment`, satisfaction
from airline
ORDER BY satisfaction DESC;

-- on-board service
SELECT id,`On-board service` , satisfaction
from airline
ORDER BY satisfaction DESC;

-- leg room
SELECT id, `Leg room service`, satisfaction
from airline
ORDER BY satisfaction DESC;

-- baggage handling
SELECT id,`Baggage handling` , satisfaction
from airline
ORDER BY satisfaction DESC;

-- check-in service
SELECT id,`Checkin service` , satisfaction
from airline
ORDER BY satisfaction DESC;

-- in flight service
SELECT id, `Inflight service`, satisfaction
from airline
ORDER BY satisfaction DESC;

-- cleanliness
SELECT id, Cleanliness, satisfaction
from airline
ORDER BY satisfaction DESC;

-- departure delay
SELECT id, `Departure Delay in Minutes`, satisfaction
from airline
ORDER BY satisfaction DESC;

-- arival delay
SELECT id,`Arrival Delay in Minutes` , satisfaction
from airline
ORDER BY satisfaction DESC;

-- gender 
SELECT Gender, satisfaction, COUNT(id)
FROM airline
GROUP BY gender, satisfaction
ORDER BY satisfaction DESC;

-- customer type (make the count(id) into a percentage -divide by sum of all ids)
SELECT `Customer Type`, satisfaction, COUNT(id)
from airline
GROUP BY `Customer Type`, satisfaction
ORDER BY satisfaction DESC;