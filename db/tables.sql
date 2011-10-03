CREATE TABLE pods (
 id serial8 UNIQUE PRIMARY KEY,
 domain text UNIQUE NOT NULL,
 score int DEFAULT 10,
 adminrating decimal DEFAULT 10,
 userrating decimal DEFAULT 10,
 whois text,
 hidden text DEFAULT 'yes',
 ip cidr,
 ptr text,
 country text,
 email text,
 ipv6 text,
 secure text,
 sslvalid text,
 Hgitdate text,
 Hgitref text,
 Hruntime text,
 Hencoding text,
 pingdomurl text,
 pingdomlast text,
 monthsmonitored int,
 uptimelast7 text,
 status text,
 responsetimelast7 text,
 dateUpdated timestamp DEFAULT current_timestamp,
 dateLaststats timestamp DEFAULT current_timestamp,
 dateCreated timestamp DEFAULT current_timestamp
);
CREATE TABLE rating_comments (
 id serial8 UNIQUE PRIMARY KEY,
 domain text NOT NULL,
 comment text,
 admin text, 
 pod_id int,
 rating int,
 username text,
 userurl text,
 date timestamp DEFAULT current_timestamp
);