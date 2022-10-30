SELECT "Н_ЛЮДИ"."ИМЯ", "Н_ВЕДОМОСТИ"."ДАТА", "Н_СЕССИЯ"."УЧГОД"
FROM "Н_ЛЮДИ"
         INNER JOIN "Н_ВЕДОМОСТИ" ON "Н_ЛЮДИ"."ИД" = "Н_ВЕДОМОСТИ"."ЧЛВК_ИД"
         INNER JOIN "Н_СЕССИЯ" ON "Н_ЛЮДИ"."ИД" = "Н_СЕССИЯ"."ЧЛВК_ИД"
WHERE "Н_ЛЮДИ"."ФАМИЛИЯ" > 'Ёлкин'
  AND "Н_ВЕДОМОСТИ"."ДАТА" < '2010-06-18'
  AND "Н_СЕССИЯ"."ИД" > 14