

drop table if exists AlbumSong;
drop table if exists Song;
drop table if exists Album;
drop table if exists BandMember;
drop table if exists Band;
drop table if exists Musician;

create table Band (
  bandId int not null primary key auto_increment,
  name varchar(200) not null
)engine=InnoDB,collate=latin1_general_cs;

create table Musician (
  musicianId int not null primary key auto_increment,
  firstName varchar(50),
  lastName varchar(50),
  country varchar(100)
)engine=InnoDB,collate=latin1_general_cs;

create table BandMember (
  bandMemberId int not null primary key auto_increment,
  musicianId int not null,
  bandId int not null,
  yearJoined int,
  foreign key (musicianId) references Musician(musicianId),
  foreign key (bandId) references Band(bandId),
  #prevent duplicate entries
  constraint uniquePair unique index(musicianId,bandId)
)engine=InnoDB,collate=latin1_general_cs;

create table Album (
  albumId int not null primary key auto_increment,
  title varchar(100) not null,
  year int not null,
  number int not null,
  bandId int not null,
  foreign key (bandId) references Band(bandId)
)engine=InnoDB,collate=latin1_general_cs;

create table Song (
  songId int not null primary key auto_increment,
  title varchar(255) not null
)engine=InnoDB,collate=latin1_general_cs;

create table AlbumSong (
  albumSongId int not null primary key auto_increment,
  trackNumber int not null,
  trackLength int not null,
  albumId int not null,
  songId int not null,
  foreign key (albumId) references Album(albumId),
  foreign key (songId) references Song(songId),
  #prevent duplicate entries
  constraint uniquePair unique index(albumId,songId)
)engine=InnoDB,collate=latin1_general_cs;


