SELECT COUNT(*)
FROM (SELECT COUNT("Н_ЛЮДИ"."ИМЯ")
      FROM "Н_ЛЮДИ"
      GROUP BY "Н_ЛЮДИ"."ИМЯ") AS names