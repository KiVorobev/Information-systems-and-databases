SELECT "Н_УЧЕНИКИ"."ГРУППА", AVG(AGE("Н_ЛЮДИ"."ДАТА_РОЖДЕНИЯ"))
FROM "Н_ЛЮДИ"
         INNER JOIN "Н_ОБУЧЕНИЯ" ON "Н_ЛЮДИ"."ИД" = "Н_ОБУЧЕНИЯ"."ЧЛВК_ИД"
         INNER JOIN "Н_УЧЕНИКИ" ON "Н_ОБУЧЕНИЯ"."ЧЛВК_ИД" = "Н_УЧЕНИКИ"."ЧЛВК_ИД"
GROUP BY "Н_УЧЕНИКИ"."ГРУППА"
HAVING AVG(AGE("Н_ЛЮДИ"."ДАТА_РОЖДЕНИЯ")) < (SELECT MAX(AGE("Н_ЛЮДИ"."ДАТА_РОЖДЕНИЯ"))
                                             FROM "Н_ЛЮДИ"
                                                      INNER JOIN "Н_ОБУЧЕНИЯ" ON "Н_ЛЮДИ"."ИД" = "Н_ОБУЧЕНИЯ"."ЧЛВК_ИД"
                                                      INNER JOIN "Н_УЧЕНИКИ" ON "Н_ОБУЧЕНИЯ"."ЧЛВК_ИД" = "Н_УЧЕНИКИ"."ЧЛВК_ИД"
                                             WHERE "Н_УЧЕНИКИ"."ГРУППА" = '1101')