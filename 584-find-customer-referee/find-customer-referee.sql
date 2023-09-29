SELECT c.name
FROM Customer c
LEFT JOIN Customer ref ON c.referee_id = ref.id
WHERE ref.id <> 2 OR ref.id IS NULL;
