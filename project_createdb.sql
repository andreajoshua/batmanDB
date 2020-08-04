DROP DATABASE IF EXISTS batman;
CREATE DATABASE batman;
USE batman;

-- CONTRIBUTOR TABLE
CREATE TABLE contributor
(
	cid					INT				PRIMARY KEY		AUTO_INCREMENT,
    cname				VARCHAR(50),
    creatorStatus		INT,
    cdescription		VARCHAR(300)
);

-- ROLES TABLE
CREATE TABLE roles
(
	rid			INT				PRIMARY KEY,
    rtitle		VARCHAR(30)		NOT NULL,
    CONSTRAINT chk_rtitle CHECK (rtitle IN ('writer', 'artist', 'producer', 'editor', 'director', 'animator'))
);

-- CHARACTER TABLE
CREATE TABLE characters
(
	chid		INT				PRIMARY KEY		AUTO_INCREMENT,
    chname		VARCHAR(300)	NOT NULL
);

-- MEDIUMS TABLE
CREATE TABLE mediums
(
	medid		INT				PRIMARY KEY,
    medname		VARCHAR(30)		NOT NULL
);

-- TITLE TABLE
CREATE TABLE title
(
	tid			INT				PRIMARY KEY		AUTO_INCREMENT,
    tname		VARCHAR(300)	NOT NULL,
    tmedium		INT				NOT NULL,
    CONSTRAINT tmedium_fk FOREIGN KEY (tmedium) REFERENCES mediums (medid) ON UPDATE CASCADE ON DELETE RESTRICT
);

-- COMIC TABLE
CREATE TABLE comic
(
	tid			INT			PRIMARY KEY,
    no_issues	INT			DEFAULT NULL,
    start_date	INT			DEFAULT NULL,
    end_date	INT			DEFAULT NULL,
    CONSTRAINT comictid_fk FOREIGN KEY (tid) REFERENCES title (tid) ON UPDATE CASCADE ON DELETE CASCADE
);

-- MOVIE TABLE
CREATE TABLE movie
(
	tid				INT			PRIMARY KEY,
    release_date	INT			DEFAULT NULL,
    run_time		INT			DEFAULT NULL,
    CONSTRAINT movietid_fk FOREIGN KEY (tid) REFERENCES title (tid) ON UPDATE CASCADE ON DELETE CASCADE
);

-- TV TABLE
CREATE TABLE tv
(
	tid				INT			PRIMARY KEY,
    no_seasons		INT			DEFAULT NULL,
    no_episodes		INT			DEFAULT NULL,
    start_date		INT			DEFAULT NULL,
    end_date		INT			DEFAULT NULL,
    CONSTRAINT tvtid_fk FOREIGN KEY (tid) REFERENCES title (tid) ON UPDATE CASCADE ON DELETE CASCADE
);

-- VIDEO GAME TABLE
CREATE TABLE videogame
(
	tid				INT			PRIMARY KEY,
    release_date	INT			DEFAULT NULL,
    genre			VARCHAR(30)	DEFAULT NULL,
    CONSTRAINT videogametid_fk FOREIGN KEY (tid) REFERENCES title (tid) ON UPDATE CASCADE ON DELETE CASCADE
);

-- CONTRIBUTOR CREATES CHARACTER TABLE
CREATE TABLE contributor_creates_character
(
	cid			INT,
    chid		INT,
    CONSTRAINT ccc_pk PRIMARY KEY (cid, chid),
    CONSTRAINT ccccid_fk FOREIGN KEY (cid) REFERENCES contributor (cid) ON UPDATE CASCADE ON DELETE CASCADE,
    CONSTRAINT cccchid_fk FOREIGN KEY (chid) REFERENCES characters (chid) ON UPDATE CASCADE ON DELETE CASCADE
);

-- CHARACTER APPEARS IN TITLE TABLE
CREATE TABLE character_appearsin_title
(
	chid		INT,
    tid			INT,
    CONSTRAINT cat_pk PRIMARY KEY (chid, tid),
    CONSTRAINT catchid_fk FOREIGN KEY (chid) REFERENCES characters (chid) ON UPDATE CASCADE ON DELETE CASCADE,
    CONSTRAINT cattid_fk FOREIGN KEY (tid) REFERENCES title (tid) ON UPDATE CASCADE ON DELETE CASCADE
);

-- CONTRIBUTOR WORKS ON TITLE AS ROLE TABLE
CREATE TABLE contributor_workson_title_as_role
(
	cid			INT,
    tid			INT,
    rid			INT,
	CONSTRAINT cwtar_pk PRIMARY KEY (cid, tid, rid),
    CONSTRAINT cwtarcid_fk FOREIGN KEY (cid) REFERENCES contributor (cid) ON UPDATE CASCADE ON DELETE CASCADE,
    CONSTRAINT cwtartid_fk FOREIGN KEY (tid) REFERENCES title (tid) ON UPDATE CASCADE ON DELETE CASCADE,
    CONSTRAINT cwtarrid_fk FOREIGN KEY (rid) REFERENCES roles (rid) ON UPDATE CASCADE ON DELETE RESTRICT
);

-- PROCEDURES & TRIGGERS FOR DELETION -------------------------------------------------------------------------

-- PROCEDURE: REMOVE DELETED CONTRIBUTORS FROM CCC TABLE
DROP PROCEDURE IF EXISTS remove_contributor_ccc;
DELIMITER //
CREATE PROCEDURE remove_contributor_ccc()
BEGIN
	DELETE FROM contributor_creates_character
    WHERE cid NOT IN (SELECT cid FROM contributor);
END//
DELIMITER ;

-- PROCEDURE: REMOVE DELETED CHARACTERS FROM CCC TABLE
DROP PROCEDURE IF EXISTS remove_character_ccc;
DELIMITER //
CREATE PROCEDURE remove_character_ccc()
BEGIN
	DELETE FROM contributor_creates_character
    WHERE chid NOT IN (SELECT chid FROM characters);
END//
DELIMITER ;

-- PROCEDURE: REMOVE DELETED CHARACTERS FROM CAT TABLE
DROP PROCEDURE IF EXISTS remove_character_cat;
DELIMITER //
CREATE PROCEDURE remove_character_cat()
BEGIN
	DELETE FROM character_appearsin_title
    WHERE chid NOT IN (SELECT chid FROM characters);
END//
DELIMITER ;

-- PROCEDURE: REMOVE DELETED TITLES FROM CAT TABLE
DROP PROCEDURE IF EXISTS remove_title_cat;
DELIMITER //
CREATE PROCEDURE remove_title_cat()
BEGIN
	DELETE FROM character_appearsin_title
    WHERE tid NOT IN (SELECT tid FROM title); 
END //
DELIMITER ;

-- PROCEDURE: REMOVE DELETED CONTRIBUTORS FROM CWTAR TABLE
DROP PROCEDURE IF EXISTS remove_contributor_cwtar;
DELIMITER //
CREATE PROCEDURE remove_contributor_cwtar()
BEGIN
	DELETE FROM contributor_workson_title_as_role
    WHERE cid NOT IN (SELECT cid FROM contributor);
END //
DELIMITER ;

-- PROCEDURE: REMOVE DELETED TITLES FROM CWTAR TABLE
DROP PROCEDURE IF EXISTS remove_title_cwtar;
DELIMITER //
CREATE PROCEDURE remove_title_cwtar()
BEGIN
	DELETE FROM contributor_workson_title_as_role
    WHERE tid NOT IN (SELECT tid FROM title);
END //
DELIMITER ;

-- PROCEDURE: REMOVE DELETED TITLES FROM COMIC TABLE
DROP PROCEDURE IF EXISTS remove_title_comic;
DELIMITER //
CREATE PROCEDURE remove_title_comic()
BEGIN
	DELETE FROM comic
    WHERE tid NOT IN (SELECT tid FROM title);
END //
DELIMITER ;

-- PROCEDURE: ADD TITLES TO COMIC TABLE
DROP PROCEDURE IF EXISTS add_title_comic;
DELIMITER //
CREATE PROCEDURE add_title_comic()
BEGIN
	INSERT INTO comic(tid)
    SELECT tid FROM title
    WHERE tid NOT IN (SELECT tid FROM comic)
		AND tmedium = 1;
END //
DELIMITER ;

-- PROCEDURE: REMOVE DELETED TITLES FROM MOVIE TABLE
DROP PROCEDURE IF EXISTS remove_title_movie;
DELIMITER //
CREATE PROCEDURE remove_title_movie()
BEGIN
	DELETE FROM movie
    WHERE tid NOT IN (SELECT tid FROM title);
END //
DELIMITER ;

-- PROCEDURE: ADD TITLES TO MOVIE TABLE
DROP PROCEDURE IF EXISTS add_title_movie;
DELIMITER //
CREATE PROCEDURE add_title_movie()
BEGIN
	INSERT INTO movie(tid)
    SELECT tid FROM title
    WHERE tid NOT IN (SELECT tid FROM movie)
		AND tmedium = 2;
END //
DELIMITER ;

-- PROCEDURE: REMOVE DELETED TITLES FROM TV TABLE
DROP PROCEDURE IF EXISTS remove_title_tv;
DELIMITER //
CREATE PROCEDURE remove_title_tv()
BEGIN
	DELETE FROM tv
    WHERE tid NOT IN (SELECT tid FROM title);
END //
DELIMITER ;

-- PROCEDURE: ADD TITLES TO TV TABLE
DROP PROCEDURE IF EXISTS add_title_tv;
DELIMITER //
CREATE PROCEDURE add_title_tv()
BEGIN
	INSERT INTO tv(tid)
    SELECT tid FROM title
    WHERE tid NOT IN (SELECT tid FROM tv)
		AND tmedium = 3;
END //
DELIMITER ;

-- PROCEDURE: REMOVE DELETED TITLES FROM VIDEOGAME TABLE
DROP PROCEDURE IF EXISTS remove_title_videogame;
DELIMITER //
CREATE PROCEDURE remove_title_videogame()
BEGIN
	DELETE FROM videogame
    WHERE tid NOT IN (SELECT tid FROM title);
END //
DELIMITER ;

-- PROCEDURE: ADD TITLES TO VIDEOGAME TABLE
DROP PROCEDURE IF EXISTS add_title_videogame;
DELIMITER //
CREATE PROCEDURE add_title_videogame()
BEGIN
	INSERT INTO videogame(tid)
    SELECT tid FROM title
    WHERE tid NOT IN (SELECT tid FROM videogame)
		AND tmedium = 4;
END //
DELIMITER ;

-- TRIGGER: REMOVE CHARACTER PROCEDURES ON DELETE
DROP TRIGGER IF EXISTS remove_characters;
DELIMITER //
CREATE TRIGGER remove_characters
	AFTER DELETE ON characters
    FOR EACH ROW
BEGIN
	CALL remove_character_ccc();
    CALL remove_character_cat();
END//
DELIMITER ;

-- TRIGGER: REMOVE CONTRIBUTOR PROCEDURES ON DELETE
DROP TRIGGER IF EXISTS remove_contributors;
DELIMITER //
CREATE TRIGGER remove_contributors
	AFTER DELETE ON contributor
    FOR EACH ROW
BEGIN
	CALL remove_contributor_ccc();
    CALL remove_contributor_cwtar();
END//
DELIMITER ;

-- TRIGGER: REMOVE TITLE PROCEDURES ON DELETE
DROP TRIGGER IF EXISTS remove_titles;
DELIMITER //
CREATE TRIGGER remove_titles
	AFTER DELETE ON title
    FOR EACH ROW
BEGIN
	CALL remove_title_cat();
    CALL remove_title_cwtar();
    CALL remove_title_comic();
    CALL remove_title_movie();
    CALL remove_title_tv();
    CALL remove_title_videogame();
END//
DELIMITER ;

-- TRIGGER: ADD TITLE PROCEDURES ON CREATE
DROP TRIGGER IF EXISTS add_titles;
DELIMITER //
CREATE TRIGGER add_titles
	AFTER INSERT ON title
    FOR EACH ROW
BEGIN
    CALL add_title_comic();
    CALL add_title_movie();
    CALL add_title_tv();
    CALL add_title_videogame();
END//
DELIMITER ;

-- PROCEDURES FOR TITLE SECTION INFO -------------------------------------------------------------------------

-- PROCEDURE: RETURN STARRING CHARACTERS FROM GIVEN TITLE
DROP PROCEDURE IF EXISTS starring_characters;
DELIMITER //
CREATE PROCEDURE starring_characters(titleid INT)
BEGIN
	SELECT chname
    FROM character_appearsin_title AS cat
    LEFT JOIN characters
		ON cat.chid = characters.chid
	WHERE tid = titleid;
END //
DELIMITER ;

-- PROCEDURE: RETURN CONTRIBUTORS AND THEIR ROLES FOR GIVEN TITLE
DROP PROCEDURE IF EXISTS contributors_of_title;
DELIMITER //
CREATE PROCEDURE contributors_of_title(titleid INT)
BEGIN
	SELECT cname AS contributor, GROUP_CONCAT(rtitle) AS all_roles
    FROM (
		SELECT cname, rtitle FROM contributor_workson_title_as_role AS cwtar
        LEFT JOIN contributor AS c
			ON cwtar.cid = c.cid
		LEFT JOIN roles AS r
			ON cwtar.rid = r.rid
		WHERE tid = titleid
        ) AS name_and_role
	GROUP BY cname;
END//
DELIMITER ;

-- PROCEDURES FOR CONTRIBUTOR SECTION INFO ---------------------------------------------------------------------

-- PROCEDURE: RETURN CHARACTERS CREATED BY A GIVEN CONTRIBUTOR
DROP PROCEDURE IF EXISTS characters_by_contributor;
DELIMITER //
CREATE PROCEDURE characters_by_contributor(contid INT)
BEGIN
	SELECT chname
    FROM contributor_creates_character AS ccc
    LEFT JOIN characters AS ch
		ON ccc.chid = ch.chid
	WHERE cid = contid;
END//
DELIMITER ;

-- PROCEDURE: RETURN TITLES AND THE RESPECTIVE ROLES WORKED ON BY A GIVEN CONTRIBUTOR
DROP PROCEDURE IF EXISTS titles_and_roles_by_contributor;
DELIMITER //
CREATE PROCEDURE titles_and_roles_by_contributor(contid INT)
BEGIN
	SELECT tname, GROUP_CONCAT(rtitle) AS all_roles
    FROM (
		SELECT tname, rtitle
        FROM contributor_workson_title_as_role AS cwtar
        LEFT JOIN title AS t
			ON cwtar.tid = t.tid
		LEFT JOIN roles AS r
			ON cwtar.rid = r.rid
		WHERE cid = contid
        ) AS title_and_role
	GROUP BY tname;
END//
DELIMITER ;

-- PROCEDURES FOR CHARACTER SECTION INFO -----------------------------------------------------------------------

-- PROCEDURE: RETURN CONTRIBUTORS WHO HAVE CREATED A GIVEN CHARACTER
DROP PROCEDURE IF EXISTS creators_of_character;
DELIMITER //
CREATE PROCEDURE creators_of_character(charid INT)
BEGIN
	SELECT cname FROM contributor_creates_character AS ccc
    LEFT JOIN contributor AS c
		ON ccc.cid = c.cid
	WHERE chid = charid;
END //
DELIMITER ;

-- PROCEDURE: RETURN TITLES WHERE GIVEN CHARACTER HAS HAD STARRING ROLE
DROP PROCEDURE IF EXISTS titles_starring_character;
DELIMITER //
CREATE PROCEDURE titles_starring_character(charid INT)
BEGIN
	SELECT tname, medname FROM character_appearsin_title AS cat
    LEFT JOIN title AS t
		ON cat.tid = t.tid
	LEFT JOIN mediums AS m
		ON t.tmedium = m.medid
	WHERE chid = charid;
END//
DELIMITER ;

-- CRUD PROCEDURES --------------------------------------------------------------------------------------------

-- CREATE TITLE
DROP PROCEDURE IF EXISTS create_title;
DELIMITER //
CREATE DEFINER=root@localhost PROCEDURE create_title(
    IN title_name VARCHAR(300),
    IN title_medium INT
)
BEGIN
    INSERT INTO title
        (
            tname,
            tmedium
        )
        VALUES
        (
            title_name,
            title_medium
        );
END//
DELIMITER ;

-- DELETE TITLE
DROP PROCEDURE IF EXISTS delete_title;
DELIMITER //
CREATE  PROCEDURE delete_title(
	title_id INT
)
BEGIN
	DELETE FROM title WHERE tid = title_id;
END//
DELIMITER ;














