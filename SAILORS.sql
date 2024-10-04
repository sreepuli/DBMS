REM   Script: Session 02
REM   boats sailors reserves

CREATE TABLE Sailors ( 
    sid NUMBER PRIMARY KEY, 
    sname VARCHAR2(20), 
    rating NUMBER, 
    age NUMBER 
);

INSERT INTO Sailors (sid, sname, rating, age) VALUES (22, 'Dustin', 7, 45.0);

INSERT INTO Sailors (sid, sname, rating, age) VALUES (29, 'Brutus', 1, 33.0);

INSERT INTO Sailors (sid, sname, rating, age) VALUES (31, 'Lubber', 8, 55.5);

INSERT INTO Sailors (sid, sname, rating, age) VALUES (32, 'Andy', 8, 25.5);

INSERT INTO Sailors (sid, sname, rating, age) VALUES (58, 'Rusty', 10, 35.0);

INSERT INTO Sailors (sid, sname, rating, age) VALUES (64, 'Horatio', 7, 35.0);

INSERT INTO Sailors (sid, sname, rating, age) VALUES (71, 'Zorba', 10, 16.0);

INSERT INTO Sailors (sid, sname, rating, age) VALUES (74, 'Horatio', 9, 35.0);

INSERT INTO Sailors (sid, sname, rating, age) VALUES (85, 'Art', 3, 25.5);

INSERT INTO Sailors (sid, sname, rating, age) VALUES (95, 'Bob', 3, 63.5);

CREATE TABLE Boats ( 
    bid NUMBER PRIMARY KEY, 
    bname VARCHAR2(20), 
    color VARCHAR2(20) 
);

INSERT INTO Boats (bid, bname, color) VALUES (101, 'Interlake', 'blue');

INSERT INTO Boats (bid, bname, color) VALUES (102, 'Interlake', 'red');

INSERT INTO Boats (bid, bname, color) VALUES (103, 'Clipper', 'green');

INSERT INTO Boats (bid, bname, color) VALUES (104, 'Marine', 'red');

CREATE TABLE Reserves ( 
    sid NUMBER, 
    bid NUMBER, 
    day DATE, 
    PRIMARY KEY (sid, bid, day), 
    FOREIGN KEY (sid) REFERENCES Sailors(sid), 
	FOREIGN KEY (bid) REFERENCES Boats(bid) 
);

INSERT INTO Reserves (sid, bid, day) VALUES (22, 101, TO_DATE('10/10/98', 'MM/DD/YY'));

INSERT INTO Reserves (sid, bid, day) VALUES (22, 102, TO_DATE('10/10/98', 'MM/DD/YY'));

INSERT INTO Reserves (sid, bid, day) VALUES (22, 103, TO_DATE('10/8/98', 'MM/DD/YY'));

INSERT INTO Reserves (sid, bid, day) VALUES (31, 102, TO_DATE('11/6/98', 'MM/DD/YY'));

INSERT INTO Reserves (sid, bid, day) VALUES (31, 103, TO_DATE('11/12/98', 'MM/DD/YY'));

INSERT INTO Reserves (sid, bid, day) VALUES (64, 101, TO_DATE('9/5/98', 'MM/DD/YY'));

INSERT INTO Reserves (sid, bid, day) VALUES (74, 103, TO_DATE('9/8/98', 'MM/DD/YY'));

select*from Sailors;

select*from Boats;

selecct*from Reserves;


select*from Reserves;

select distinct sname from sailors where Sailors.sid=Reserves.sid;

select distinct sname from sailors natural join Reserves where sailors.sid=reserves.sid;

select distinct sname from sailors S, Reserves R where S.sid=R.sid;

select sname from sailors S where exists (select sid from reserves R where S.sid=r.sid);

select	distinct sname from sailors S where exists (select sid from reserves R where S.sid=r.sid);

select distinct sname from sailors S, Reserves R where S.sid=R.sid;

select * from sailors NATURAL JOIN BOATS NATURAL JOIN RESERVES WHERE BID=101;

SELECT * FROM SAILORS NATURAL JOIN RESERVES WHERE RESERVES.BID=101;

SELECT SNAME,MIN(AGE) AS AGE FROM SAILORS ;

SELECT SNAME,MIN(AGE)AS YOUNGAGE FROM SAILORS ;

SELECT MIN(AGE)AS YOUNGAGE FROM SAILORS ;

SELECT S.SNAME, MIN(S.AGE)AS YOUNGAGE FROM SAILORS S ;

SELECT SNAME FROM SAILORS WHERE IN( SELECT MIN(S.AGE)AS YOUNGAGE FROM SAILORS S) ;

SELECT * FROM SAILORS WHERE RATING >7;

SELECT * FROM SAILORS WHERE RATING >7;

SELECT * FROM SAILORS WHERE RATING >7;

SELECT SNAME FROM SAILORS S ,BOATS B,RESERVES R WHERE S.SID=R.SID AND B.BID=R.BID AND B.COLOR="RED";

SELECT SNAME FROM SAILORS S ,BOATS B,RESERVES R WHERE S.SID=R.SID AND B.BID=R.BID AND B.COLOR='RED';

SELECT SNAME FROM SAILORS S , RESERVES R,BOATS B WHERE S.SID=R.SID AND R.BID=B.BID AND B.COLOR='RED';

SELECT S.SNAME FROM SAILORS S , RESERVES R,BOATS B WHERE S.SID=R.SID AND R.BID=B.BID AND B.COLOR='RED';

SELECT S.SNAME FROM SAILORS S , RESERVES R,BOATS B WHERE S.SID=R.SID AND R.BID=B.BID AND B.COLOR='red';

select b.color from sailors s,boats b,reseves r where s.sid=r.sid and r.bid=b.bid and s.name='lubber';

select b.color from sailors s,reseves r ,boats b where s.sid=r.sid and r.bid=b.bid and s.name='lubber';

select b.color from sailors s,reseves r ,boats b where s.sid=r.sid and r.bid=b.bid and s.name='lubber';

select b.color from sailors s,reserves r ,boats b where s.sid=r.sid and r.bid=b.bid and s.name='lubber';

select b.color from sailors s,reserves r ,boats b where s.sid=r.sid and r.bid=b.bid and s.sname='lubber';

select b.color from sailors s,reserves r ,boats b where r.bid=b.bid and s.sid==r.bid and s.sname='Lubber';

select b.color from sailors s,reserves r ,boats b where r.bid=b.bid and s.sid=r.bid and s.sname='Lubber';

select b.color from sailors s,reserves r ,boats b where r.bid=b.bid and s.sid=r.sid and s.sname='Lubber';

select *from saliors where sname like 'd%;';

select *from saliors where sname like 'D%';

select *from saliors where sname like 'D%';

select *from saliors where sname like '%bb%';

select*from Sailors;

select *from sailors where sname like '%bb%';

select *from sailors where sname like 'd%';

select *from sailors where sname like 'D%';
--select * from sailors;
--colors of boats reseved by lubber
--select color from sailors s, boats b,reserves r where s.sid=r.sid and b.bid=r.bid and s.sname='Lubber';
--all sailors sids who have rating atleast 8 or reserved boat 103?
/*select sid from sailors where rating>=8
union
(select sid from reserves R where R.sid=103);*/
-- names of sailors who reseve all boats
--select sname from Sailors s where not exists
--(select *from boats b where not exists(select * from reserves r where r.sid=s.sid and b.bid=r.bid));
--select * from boats;
--select * from reserves;
--select sname ,age from sailors where age in (select max(age) from sailors);
--REATE VIEW NAME AS SELECT SNAME,RATING FROM SAILORS ORDER BY RATING DESC;
--SELECT * FROM NAME;
--SELECT S.SID,COUNT(R.BID) FROM SAILORS S ,RESERVES R WHERE S.SID=R.SID GROUP BY R.SID HAVING COUNT(R.BID)>=2;

