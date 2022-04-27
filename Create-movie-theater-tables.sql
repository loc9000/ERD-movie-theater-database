CREATE TABLE "customers" (
	"customer_id" serial NOT NULL,
	"first_name" varchar(255) NOT NULL,
	"last_name" varchar(255) NOT NULL,
	CONSTRAINT "customers_pk" PRIMARY KEY ("customer_id")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "tickets" (
	"ticket_id" serial NOT NULL,
	"user_id" int NOT NULL,
	"price" float8 NOT NULL,
	"date_purchased" TIMESTAMP NOT NULL,
	"quantity" int NOT NULL,
	"theater_id" int NOT NULL,
	"movie_id" int NOT NULL,
	CONSTRAINT "tickets_pk" PRIMARY KEY ("ticket_id")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "concessions" (
	"concession_id" serial NOT NULL,
	"price" float8 NOT NULL,
	"date_purchased" TIMESTAMP NOT NULL,
	"quantity" int NOT NULL,
	"customer_id" int NOT NULL,
	CONSTRAINT "concessions_pk" PRIMARY KEY ("concession_id")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "movies" (
	"movie_id" serial NOT NULL,
	"movie_title" varchar(255) NOT NULL,
	"run_time" int NOT NULL,
	"movie_rating" varchar(40) NOT NULL,
	CONSTRAINT "movies_pk" PRIMARY KEY ("movie_id")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "theaters" (
	"theater_id" serial NOT NULL,
	"theater_number" int NOT NULL,
	"theater_capacity" int NOT NULL,
	"movie_id" int NOT NULL,
	CONSTRAINT "theaters_pk" PRIMARY KEY ("theater_id")
) WITH (
  OIDS=FALSE
);




ALTER TABLE "tickets" ADD CONSTRAINT "tickets_fk0" FOREIGN KEY ("user_id") REFERENCES "customers"("customer_id");
ALTER TABLE "tickets" ADD CONSTRAINT "tickets_fk1" FOREIGN KEY ("theater_id") REFERENCES "theaters"("theater_id");
ALTER TABLE "tickets" ADD CONSTRAINT "tickets_fk2" FOREIGN KEY ("movie_id") REFERENCES "movies"("movie_id");

ALTER TABLE "concessions" ADD CONSTRAINT "concessions_fk0" FOREIGN KEY ("customer_id") REFERENCES "customers"("customer_id");


ALTER TABLE "theaters" ADD CONSTRAINT "theaters_fk0" FOREIGN KEY ("movie_id") REFERENCES "movies"("movie_id");





