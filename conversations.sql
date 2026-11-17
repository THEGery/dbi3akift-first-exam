-- A view is a virtual table that helps display selected informations from an already existing table (or tables).
-- A view would be advantageous as it can display only needed information from a table without including e.g. personal information from users and can help speed up statements. Instead of creating a join or subselect each time information from multiple tables are needed, it allows to collect these informations in one table, thus speeding up selects etc.


CREATE VIEW v_conversations_incoming AS
SELECT
    cont.id,
    cont.first_name,
    cont.last_name,
    mes.COUNT(message_id)
FROM conversations conv
LEFT JOIN contacts cont ON conv.id = cont.id
LEFT JOIN messages_conversations mes ON conv.id = mes.message_id


CREATE VIEW v_conversations AS
SELECT
    cont.id,
    cont.first_name,
    cont.last_name,
    conv.last_message
FROM conversations conv
LEFT JOIN contacts cont ON conv.id = cont.id
