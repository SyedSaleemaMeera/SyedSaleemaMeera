-- ASSIGNMENT 1
create table countries
(country_id  int primary key,
country_name varchar(30) unique)
select * from countries;
insert into countries values ( 1,'India'),( 2,'USA'),( 3,'China'),( 4,'Russia'),( 5,'Italy');
create table states
(state_id int primary key,
state_name varchar(30) unique,
country_id int,
FOREIGN KEY (country_id) references countries(country_id)
);
select * from states;
insert into states values 
(11,'AP',1),(12,'TS',1),(13,'gujarath',1),(14,'UP',1),(15,'kerala',1),
(16,'california',2),(17,'colorado',2),(18,'alaska',2),(19,'dakota',2),(20,'ohia',2),
(21,'henan',3),(22,'hebei',3),(23,'jiangxi',3),(24,'jilin',3),(25,'tianjin',3),
(26,'amur',4),(27,'altai',4),(28,'belgorod',4),(29,'chechen',4),(30,'bryansk',4),
(31,'venenian',5),(32,'papal',5),(33,'apulia',5),(34,'milan',5),(35,'naples',5);
create table cities
(city_id  int primary key,
city_name varchar(30) unique,
state_id  int ,
foreign key (state_id) references states(state_id),
country_id int ,
foreign key (country_id) references countries(country_id)
);
select * from cities;
select * from cities where country_id=1;
insert into cities values 
(111,'vijayawada',11,1),(112,'vizag',11,1),(113,'tirupath',11,1),(114,'kakinada',11,1),(115,'kadapa',11,1),
(116,'hyderabad',12,1),(117,'warangal',12,1),(118,'nizamabad',12,1),(119,'khammam',12,1),(120,'medak',12,1),
(121,'ahmedabad',13,1),(122,'surat',13,1),(123,'vadodara',13,1),(124,'patan',13,1),(125,'rajkot',13,1),
(126,'lucknow',14,1),(127,'agra',14,1),(128,'varanasi',14,1),(129,'kanpur',14,1),(130,'mathura',14,1),
(131,'kochi',15,1),(132,'kannur',15,1),(133,'kollam',15,1),(134,'thrissur',15,1),(135,'kottayam',15,1),

(136,'los angels',16,2),(137,'sanfrancisco',16,2),(138,'san diego',16,2),(139,'san jose',16,2),(140,'oakland',16,2),
(141,'denver',17,2),(142,'lakewood',17,2),(143,'greeley',17,2),(144,'boulder',17,2),(145,'longmont',17,2),
(146,'anchorage',18,2),(147,'badger',18,2),(148,'juneau',18,2),(149,'fairbanks',18,2),(150,'knik',18,2),
(151,'sioux',19,2),(152,'rapid',19,2),(153,'pierre',19,2),(154,'bison',19,2),(155,'huron',19,2),
(156,'toledo',20,2),(157,'akron',20,2),(158,'parma',20,2),(159,'cleveland',20,2),(160,'dayton',20,2),

(161,'jiaozuo',21,3),(162,'xuchang',21,3),(163,'ruzhou',21,3),(164,'dengzhou',21,3),(165,'wugang',21,3),
(166,'baoding',22,3),(167,'handan',22,3),(168,'xingtai',22,3),(169,'hengshui',22,3),(170,'chengde',22,3),
(171,'nanchang',23,3),(172,'jiujiang',23,3),(173,'zhejiang',23,3),(174,'hunan',23,3),(175,'anhui',23,3),
(176,'baishan',24,3),(177,'tonghua',24,3),(178,'yanji',24,3),(179,'siping',24,3),(180,'liaoyuan',24,3),
(181,'balitai',25,3),(182,'beicang',25,3),(183,'dakoutun',25,3),(184,'daliang',25,3),(185,'dasi',25,3),

(186,'tynda',26,4),(187,'shimanovsk',26,4),(188,'svobodny',26,4),(189,'belogorsk',26,4),(190,'zeya',26,4),
(191,'aktash',27,4),(192,'bele',27,4),(193,'kokbesh',27,4),(194,'chibit',27,4),(195,'chibilya',27,4),
(196,'oskal',28,4),(197,'stroitel',28,4),(198,'shebekino',28,4),(199,'gubkin',28,4),(200,'kyakhta',28,4),
(201,'argun',29,4),(202,'martan',29,4),(203,'shali',29,4),(204,'grozny',29,4),(205,'urus',29,4),
(206,'seltso',30,4),(207,'starodub',30,4),(208,'sevsk',30,4),(209,'belyye',30,4),(210,'star',30,4),

(211,'padua',31,5),(212,'vicenza',31,5),(213,'verona',31,5),(214,'treviso',31,5),(215,'bergamo',31,5),
(216,'marche',32,5),(217,'umbria',32,5),(218,'romagna',32,5),(219,'emilia',32,5),(220,'lazio',32,5),
(221,'acaya',33,5),(222,'accadia',33,5),(223,'adelfia',33,5),(224,'salento',33,5),(225,'acquarica',33,5),
(226,'arese',34,5),(227,'arluno',34,5),(228,'assago',34,5),(229,'corsico',34,5),(230,'segrate',34,5),
(231,'ravello',35,5),(232,'battipaglia',35,5),(233,'avellino',35,5),(234,'nocera',35,5),(235,'positano',35,5);
 
select * from countries;
select * from states;
select * from cities;






