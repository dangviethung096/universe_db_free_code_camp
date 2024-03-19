alter table star add constraint fk_galaxy foreign key(galaxy_id) references galaxy(galaxy_id);

alter table star add column galaxy_id int references galaxy(galaxy_id);
alter table planet add column star_id int references star(star_id);
alter table moon add column planet_id int references planet(planet_id);

alter table galaxy add column size int not null;
alter table galaxy add column square int not null;

alter table planet add column size int not null;
alter table planet add column square int not null;

alter table star add column size int not null;
alter table star add column square int not null;

alter table moon add column size int not null;
alter table moon add column square int not null;

create table black_hole(moon_id serial primary key, name varchar(50) not null unique, type int, category int, radius numeric, description text, cold boolean, solar_system bool, size int not null, square int not null);

insert into galaxy(name, type, category, radius, description, cold, solar_system, size, square) values
('g_01', 1, 1, 1000, 'galaxy_01', true, true, 1, 1),
('g_02', 2, 2, 2000, 'galaxy_02', true, true, 2, 2),
('g_03', 3, 3, 3000, 'galaxy_03', true, true, 3, 3),
('g_04', 4, 4, 4000, 'galaxy_04', true, true, 4, 4),
('g_05', 5, 5, 5000, 'galaxy_05', true, true, 5, 5),
('g_06', 6, 6, 6000, 'galaxy_06', true, true, 6, 6);

insert into star(name, type, category, radius, description, cold, solar_system, size, square, galaxy_id) values
('s_01', 1, 1, 1000, 'star_01', true, true, 1, 1, 1),
('s_02', 2, 2, 2000, 'star_02', true, true, 2, 2, 2),
('s_03', 3, 3, 3000, 'star_03', true, true, 3, 3, 3),
('s_04', 4, 4, 4000, 'star_04', true, true, 4, 4, 4),
('s_05', 5, 5, 5000, 'star_05', true, true, 5, 5, 5),
('s_06', 6, 6, 6000, 'star_06', true, true, 6, 6, 6);

insert into planet(name, type, category, radius, description, cold, solar_system, size, square, star_id) values
('p_01', 1, 1, 1000, 'planet_01', true, true, 1, 1, 1),
('p_02', 2, 2, 2000, 'planet_02', true, true, 2, 2, 2),
('p_03', 3, 3, 3000, 'planet_03', true, true, 3, 3, 3),
('p_04', 4, 4, 4000, 'planet_04', true, true, 4, 4, 4),
('p_05', 5, 5, 5000, 'planet_05', true, true, 5, 5, 5),
('p_06', 6, 6, 6000, 'planet_06', true, true, 6, 6, 6),
('p_07', 7, 7, 7000, 'planet_07', true, true, 7, 7, 1),
('p_08', 8, 8, 8000, 'planet_08', true, true, 8, 8, 2),
('p_09', 9, 9, 9000, 'planet_09', true, true, 9, 9, 3),
('p_010', 10, 10, 10000, 'planet_010', true, true, 10, 10, 4),
('p_011', 11, 11, 11000, 'planet_011', true, true, 11, 11, 5),
('p_012', 12, 12, 12000, 'planet_012', true, true, 12, 12, 6);


insert into moon(name, type, category, radius, description, cold, solar_system, size, square, planet_id) values
('m_01', 1, 1, 1000, 'moon_01', true, true, 1, 1, 1),
('m_02', 2, 2, 2000, 'moon_02', true, true, 2, 2, 2),
('m_03', 3, 3, 3000, 'moon_03', true, true, 3, 3, 3),
('m_04', 4, 4, 4000, 'moon_04', true, true, 4, 4, 4),
('m_05', 5, 5, 5000, 'moon_05', true, true, 5, 5, 5),
('m_06', 6, 6, 6000, 'moon_06', true, true, 6, 6, 6),
('m_07', 7, 7, 7000, 'moon_07', true, true, 7, 7, 7),
('m_08', 8, 8, 8000, 'moon_08', true, true, 8, 8, 8),
('m_09', 9, 9, 9000, 'moon_09', true, true, 9, 9, 9),
('m_010', 10, 10, 10000, 'moon_010', true, true, 10, 10, 1),
('m_011', 11, 11, 11000, 'moon_011', true, true, 11, 11, 2),
('m_012', 12, 12, 12000, 'moon_012', true, true, 12, 12, 3),
('m_013', 13, 13, 13000, 'moon_013', true, true, 13, 13, 4),
('m_014', 14, 14, 14000, 'moon_014', true, true, 14, 14, 5),
('m_015', 15, 15, 15000, 'moon_015', true, true, 15, 15, 6),
('m_016', 16, 16, 16000, 'moon_016', true, true, 16, 16, 7),
('m_017', 17, 17, 17000, 'moon_017', true, true, 17, 17, 8),
('m_018', 18, 18, 18000, 'moon_018', true, true, 18, 18, 9),
('m_019', 19, 19, 19000, 'moon_019', true, true, 19, 19, 10),
('m_020', 20, 20, 20000, 'moon_020', true, true, 20, 20, 11);

insert into black_hole(name, type, category, radius, description, cold, solar_system, size, square) values
('bl_01', 1, 1, 1000, 'black_hole_01', true, true, 1, 1),
('bl_02', 2, 2, 2000, 'black_hole_02', true, true, 2, 2),
('bl_03', 3, 3, 3000, 'black_hole_03', true, true, 3, 3);
