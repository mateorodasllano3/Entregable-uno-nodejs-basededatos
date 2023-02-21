CREATE TABLE "users" (
  "id" SERIAL PRIMARY KEY,
  "name" varchar(50) NOT NULL,
  "email" varchar(50) UNIQUE NOT NULL,
  "password" varchar NOT NULL,
  "age" init NOT NULL
);

CREATE TABLE "courses" (
  "id" SERIAL PRIMARY KEY,
  "title" varchar NOT NULL,
  "description" varchar NOT NULL,
  "level" varchar,
  "teacher" varchar NOT NULL,
  "categories" init NOT NULL
);

CREATE TABLE "course_video" (
  "id" SERIAL PRIMARY KEY,
  "title" varchar NOT NULL,
  "url" varchar UNIQUE NOT NULL
);

CREATE TABLE "categories" (
  "id" SERIAL PRIMARY KEY,
  "name" varchar NOT NULL
);

CREATE TABLE "roles" (
  "id" SERIAL PRIMARY KEY,
  "name" varchar NOT NULL
);

CREATE TABLE "users_courses" (
  "id" SERIAL PRIMARY KEY,
  "users" init NOT NULL,
  "title" init NOT NULL
);

ALTER TABLE "users_courses" ADD FOREIGN KEY ("users") REFERENCES "users" ("id");

ALTER TABLE "users_courses" ADD FOREIGN KEY ("title") REFERENCES "courses" ("title");

ALTER TABLE "categories" ADD FOREIGN KEY ("id") REFERENCES "courses" ("categories");

ALTER TABLE "roles" ADD FOREIGN KEY ("name") REFERENCES "users" ("name");

ALTER TABLE "courses" ADD FOREIGN KEY ("title") REFERENCES "course_video" ("title");

INSERT INTO users (name, email, password, age) VALUES ('Mateo', 'mateo@gmail.com', 'Torre123', 24), ('Valentina', 'valentina@gmail.com', 'Hola234', 23)

INSERT INTO courses ( title, description,level,teacher,categories) VALUES ('Cocina', 'Aprende a cocinar los platos tipicos de tu región', 'Principiante', 'Jose Agudelo', 1), ('Dibuja', 'Aprende los principios básicos del dibujo', 'Intermedio', 'Juanito Perez', 4)

INSERT INTO cateogires (name) VALUES ( 'Cocina'), ('Dibujo'),('Natación')

INSERT INTO course_video (title, url) VALUES ('Cocina desde 0', 'www.cursosgratis.com/cocina/principiantes'), ('Aprende a dibujar', 'www.cursosgratis.com/dibujo/intermedio')
