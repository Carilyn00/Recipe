CREATE TABLE  `recipe` (
  `id` int(20),
  `content` varchar(255),
  `cook_time` int(11),
  `difficulty` varchar(255),
  `name` varchar(255),
  `prep_time` int(11),
  `servings` int(11),
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_rm1mlratj8yf3e1yxwk156x4p` (`name`)
) ;

CREATE TABLE  `category` (
  `id` int(20),
  `description` varchar(255),
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_3x7l6yk1oxdxmdh4am3yq2y38` (`description`)
);

CREATE TABLE  `comment` (
  `id` int(20),
  `author` varchar(255),
  `com_content` varchar(255),
  `date` date,
  `recipe_id` int(20),
  PRIMARY KEY (`id`),
  KEY `FKe5i1rxybcm40jcn98fj1jmvit` (`recipe_id`),
  CONSTRAINT `FKe5i1rxybcm40jcn98fj1jmvit` FOREIGN KEY (`recipe_id`) REFERENCES `recipe` (`id`)
);

CREATE TABLE  `ingredient` (
  `id` int(20),
  `amount` decimal(19,2),
  `name` varchar(255),
  `unit_of_measure` varchar(255),
  `recipe_id` int(20),
  PRIMARY KEY (`id`),
  KEY `FKj0s4ywmqqqw4h5iommigh5yja` (`recipe_id`),
  CONSTRAINT `FKj0s4ywmqqqw4h5iommigh5yja` FOREIGN KEY (`recipe_id`) REFERENCES `recipe` (`id`)
) ;


CREATE TABLE  `recipe_category` (
  `recipe_id` int(20),
  `category_id` int(20),
  PRIMARY KEY (`recipe_id`,`category_id`),
  KEY `FKqsi87i8d4qqdehlv2eiwvpwb` (`category_id`),
  CONSTRAINT `FKcqlqnvfyarhieewfeayk3v25v` FOREIGN KEY (`recipe_id`) REFERENCES `recipe` (`id`),
  CONSTRAINT `FKqsi87i8d4qqdehlv2eiwvpwb` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`)
);
