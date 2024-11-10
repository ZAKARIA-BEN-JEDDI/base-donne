DELIMITER //
CREATE OR REPLACE PROCEDURE update_note()
  BEGIN
  DECLARE est_null BOOLEAN DEFAULT FALSE ;
  DECLARE minn INT DEFAULT 0;
  DECLARE note FLOAT DEFAULT 0;
  DECLARE i INT DEFAULT 0;
  DECLARE i2 INT DEFAULT 0;
  DECLARE nbr INT DEFAULT 0;
  DECLARE nbr2 INT DEFAULT 0;
  SET nbr = (SELECT COUNT(*) FROM stagiaire);
  WHILE (i < nbr) DO
    SET nbr2 = (SELECT COUNT(*) FROM notation WHERE N-stagiare = i);
    WHILE (i2 < nbr2) DO
      SET note = (SELECT note FROM notation WHERE n_stagiaire = i LIMIT i2,1);
      IF (note is null or note == 0) THEN 
        UPDATE notation SET note = note WHERE n_stagiaire = i2 ;
      END IF
      SET i2 = i2 + 1 ;
    END WHILE ;
    SET i = i + 1 ;
  END WHILE ;
END//