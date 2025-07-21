-- Table: user
CREATE TABLE user (
    user_id       INT AUTO_INCREMENT PRIMARY KEY,
    username      VARCHAR(50) NOT NULL,
    firstname     VARCHAR(50) NOT NULL,
    lastname      VARCHAR(50) NOT NULL,
    email         VARCHAR(100) NOT NULL,
    password      VARCHAR(255) NOT NULL,
    phone_number  VARCHAR(20) NOT NULL,
    adress        VARCHAR(255) NOT NULL,
    role          VARCHAR(50) NOT NULL,
    credit        INT NOT NULL,
    preference_id INT,
    UNIQUE (preference_id)
) ENGINE=InnoDB;

-- Table: preference
CREATE TABLE preference (
    preference_id     INT AUTO_INCREMENT PRIMARY KEY,
    animals           BOOLEAN NOT NULL,
    smoker            BOOLEAN NOT NULL,
    music             BOOLEAN NOT NULL,
    disbled_equipment BOOLEAN NOT NULL,
    trailer           BOOLEAN NOT NULL,
    usb_charger       BOOLEAN NOT NULL,
    tablet            BOOLEAN NOT NULL,
    user_id_have      INT NOT NULL,
    UNIQUE (user_id_have),
    CONSTRAINT preference_user_FK FOREIGN KEY (user_id_have) REFERENCES user(user_id)
) ENGINE=InnoDB;

-- Table: avis
CREATE TABLE avis (
    avis_id      INT AUTO_INCREMENT PRIMARY KEY,
    comment      TEXT NOT NULL,
    note         INT NOT NULL,
    user_id_file INT NOT NULL,
    CONSTRAINT avis_user_FK FOREIGN KEY (user_id_file) REFERENCES user(user_id)
) ENGINE=Inn
