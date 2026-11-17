--A view can be problematic managing conversations as

--When multiple independent processes are executed, one connection can change a data the other connection uses to change the same data, or that data is dependent on the other.

--It is important to have a process complete in one go, so there are no half way changed data, on something that depends on multiple tables or information.

--A Database transaction is a connection to the database, that ensures the statement(s) are executed as a whole (insert, update, delete) to every table it needs to access, in order to not have changes that affect one part and leave an other part that depends on the previous unchanged.

PRAGMA journal_mode WAL;
BEGIN TRANSACTION;

INSERT INTO messageas (id, sender, subject, body) VALUES (1, 'someone', 'subject', 'text')



COMMIT;
