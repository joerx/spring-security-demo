DROP TABLE IF EXISTS "authorities";
CREATE TABLE "public"."authorities" (
    "username" character varying(50) NOT NULL,
    "authority" character varying(50) NOT NULL,
    CONSTRAINT "authorities_username_fkey" FOREIGN KEY (username) REFERENCES users(username) ON UPDATE CASCADE ON DELETE CASCADE NOT DEFERRABLE
) WITH (oids = false);

CREATE INDEX "authorities_username" ON "public"."authorities" USING btree ("username");

INSERT INTO "authorities" ("username", "authority") VALUES
('plato',	'PHILOSOPHER'),
('plato',	'ACADEMIC'),
('socrates',	'PHILOSOPHER'),
('zeno',	'PHILOSOPHER'),
('zeno',	'STOIC');

DROP TABLE IF EXISTS "users";
CREATE TABLE "public"."users" (
    "username" character varying(50) NOT NULL,
    "password" character varying(50) NOT NULL,
    "enabled" smallint NOT NULL,
    CONSTRAINT "users_username" PRIMARY KEY ("username")
) WITH (oids = false);

INSERT INTO "users" ("username", "password", "enabled") VALUES
('plato',	'{noop}test123',	1),
('socrates',	'{noop}test123',	1),
('zeno',	'{noop}test123',	1);