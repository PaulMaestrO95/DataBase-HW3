create table if not exists Genre (
	Id SERIAL primary key,
	Name varchar(40) not null
	);

create table if not exists Artist (
	Id SERIAL primary key,
	Alias varchar(40) not null
	);

create table if not exists Genre_Artist (
	Id SERIAL primary key,
	IdGenre integer,
	IdArtist integer,
	foreign key (IdGenre) references Genre(Id),
	foreign key (IdArtist) references Artist(Id)
	);

create table if not exists Album (
	Id SERIAL primary key,
	Name varchar(40) not null,
	ReleaseYear date not null
	);

create table if not exists Artist_Album (
	Id SERIAL primary key,
	IdArtist integer,
	IdAlbum integer,
	foreign key (IdArtist) references Artist(Id),
	foreign key (IdAlbum) references Album(Id)
	);


create table if not exists Track (
	Id SERIAL primary key,
	IdAlbum SERIAL,
	Name varchar(40) not null,
	Duration integer not null,
	foreign key (IdAlbum) references Album(Id)
	);

create table if not exists Collection (
	Id SERIAL primary key,
	Name varchar(40) not null,
	ReleaseYear date not null
	);

create table if not exists Track_Collection (
	Id SERIAL primary key,
	IdTrack integer,
	IdCollection integer,
	foreign key (IdTrack) references Track(Id),
	foreign key (IdCollection) references Collection(Id)
	);