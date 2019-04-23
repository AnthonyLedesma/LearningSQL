SELECT * FROM Alarms;
SELECT * FROM RecordedAlarms;

-- RIGHT JOIN
SELECT t1.Name AS T1NAME, t1.alarming AS T1ALARMING,
	   t2.Name AS T2NAME, t2.AlarmEndTime AS T2AET, t2.AlarmStartTime AS T2AST
FROM Alarms t1
RIGHT JOIN RecordedAlarms t2 ON t1.Name = t2.Name;

-- LEFT JOIN
SELECT t1.Name AS T1NAME, t1.alarming AS T1ALARMING,
	   t2.Name AS T2NAME, t2.AlarmEndTime AS T2AET, t2.AlarmStartTime AS T2AST
FROM Alarms t1
LEFT JOIN RecordedAlarms t2 ON t1.Name = t2.Name;

-- FULL OUTER JOIN
SELECT t1.Name AS T1NAME, t1.alarming AS T1ALARMING,
	   t2.Name AS T2NAME, t2.AlarmEndTime AS T2AET, t2.AlarmStartTime AS T2AST
FROM Alarms t1
RIGHT JOIN RecordedAlarms t2 ON t1.Name = t2.Name
UNION
SELECT t1.Name AS T1NAME, t1.alarming AS T1ALARMING,
	   t2.Name AS T2NAME, t2.AlarmEndTime AS T2AET, t2.AlarmStartTime AS T2AST
FROM Alarms t1
LEFT JOIN RecordedAlarms t2 ON t1.Name = t2.Name;