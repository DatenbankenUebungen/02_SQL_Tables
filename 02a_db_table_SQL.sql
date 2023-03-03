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

SHOW TABLES;

# Befülle die Tabelle mit Werten
INSERT INTO coworkers (firstName, location, age, computer)
VALUES
    ("Markus", "coffin", "150", "Smartphone"),
    ("Juergen", "home", "25", "PC"),
    ("Hans", "office", "35", "PC"),
    ("Peter", "pool", "40", "Tablet"),
    ("Bama", "airport", "52", "Notebook");

SELECT * FROM coworkers;

INSERT INTO coworkers (firstName, location, age, computer)
VALUES
    ("Max", "office", 35, "PC"),
    ("Gani", "pool", 36, "iPad"),
    ("Sohrab", "bed", 26, "Mac");
    
# Zeige alle Inhalte der Tabelle coworkers an
SELECT * FROM coworkers;

# Zeigt die Beschreibung der Tabelle coworkers an
DESCRIBE coworkers;

# Sortiere die Tabelle coworkers nach den Werten in age
SELECT * FROM coworkers
ORDER BY age;

SELECT * FROM coworkers WHERE location = "pool";