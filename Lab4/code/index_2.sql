CREATE INDEX session_id ON "Н_СЕССИЯ" USING btree ("ИД");
CREATE INDEX statements_id ON "Н_ВЕДОМОСТИ" USING btree("ИД");
CREATE INDEX person_name ON "Н_ЛЮДИ" USING hash("ИМЯ");