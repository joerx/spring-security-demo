DROP TABLE IF EXISTS "authorities";
CREATE TABLE "public"."authorities" (
                                        "username" character varying(50) NOT NULL,
                                        "authority" character varying(50) NOT NULL,
                                        CONSTRAINT "authorities_username_fkey" FOREIGN KEY (username) REFERENCES users(username) ON UPDATE CASCADE ON DELETE CASCADE NOT DEFERRABLE
) WITH (oids = false);

CREATE INDEX "authorities_username" ON "public"."authorities" USING btree ("username");

INSERT INTO "authorities" ("username", "authority") VALUES
('plato',	'ROLE_PHILOSOPHER'),
('socrates',	'ROLE_PHILOSOPHER'),
('zeno',	'ROLE_PHILOSOPHER'),
('plato',	'ROLE_ACADEMIC'),
('zeno',	'ROLE_STOIC');

DROP TABLE IF EXISTS "users";
CREATE TABLE "public"."users" (
                                  "username" character varying(50) NOT NULL,
                                  "password" character varying(68) NOT NULL,
                                  "enabled" smallint NOT NULL,
                                  CONSTRAINT "users_username" PRIMARY KEY ("username")
) WITH (oids = false);

INSERT INTO "users" ("username", "password", "enabled") VALUES
('socrates',	'{bcrypt}$2a$10$ZhslzdUBP0IJ1y.h786iJ.TOLrmHHw5RikoQgEujtm8bKgHvraAVi',	1),
('plato',	'{bcrypt}$2a$10$N.dw0FVVZqIZwQBUzMWsROBDRsmC.ugrCN1H0DsUKT21QH1eT0Fde',	1),
('zeno',	'{bcrypt}$2a$10$JtvwIgL8hVeJ2luCn6DR8.WiH7n0INodirP.HeXN8K9MnVnvr0Sky',	1);