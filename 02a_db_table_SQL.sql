/* ------  Strukturen ----- */

/* Kommentar 1 */
#  Kommentar 2
-- Kommentar 3

# Datenbanken auf Server anzeigen
SHOW DATABASES;

# DB boo löschen, falls vorhanden
DROP DATABASE IF EXISTS boo;

SHOW DATABASES;

# DB boo anlegen, falls noch NICHT vorhanden
CREATE DATABASE IF NOT EXISTS boo;

SHOW DATABASES;

# DB auswählen
USE boo;

# Tabellen der ausgewählten DB anzeigen
SHOW TABLES;

# Lösche Tabelle, unnötig da wir die DB vorher löschen!
DROP TABLE IF EXISTS coworkers;

# Erstelle Tabelle in der aktuellen DB
CREATE TABLE IF NOT EXISTS coworkers
(
    firstName VARCHAR(20),
    location VARCHAR(20),
    age INT,
    computer VARCHAR(20)
);

# Zeige alle Tabellen in der aktuellen Datenbank an
SHOW TABLES;

# Befülle die Tabelle mit Werten
INSERT INTO coworkers (firstName, location, age, computer)
VALUES
    ("Markus", "starbucks", "21", "Notebook"),
    ("Juergen", "home", "25", "PC"),
    ("Hans", "office", "35", "PC"),
    ("Peter", "pool", "40", "Tablet"),
    ("Bama", "airport", "52", "Notebook");

# Zeige alle Inhalte der Tabelle coworkers an
SELECT * FROM coworkers;

INSERT INTO coworkers (firstName, location, age, computer)
VALUES
    ("Max", "office", 35, "PC"),
    ("Gani", "pool", 36, "iPad"),
    ("Sohrab", "bed", 26, "Mac");
    

SELECT * FROM coworkers;

# Zeigt die Struktur der Tabelle coworkers an
DESCRIBE coworkers;

# Sortiere die Tabelle coworkers nach den Werten in age
SELECT * FROM coworkers
ORDER BY age;

# Inhalte der Tabelle coworkers Filtern
SELECT * FROM coworkers WHERE location = "pool";

# Inhalte sortieren
SELECT firstName, location FROM coworkers;
