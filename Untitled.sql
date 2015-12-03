use depthealth;

insert into island (ID)
values
("Oahu"),
("Maui"),
("Hawaii"),
("Kauai"),
("Lanai"),
("Niihau"),
("Molokai"),
("Kahoolawe");

insert into enrollment(ID, EnrollmentName)
values
(1, "PreK"),
(2, "K"),
(3, "1"),
(4, "2"),
(5, "3"),
(6, "4"),
(7, "5"),
(8, "6"),
(9, "7"),
(10, "8"),
(11, "9"),
(12, "10"),
(13, "11"),
(14, "12");

insert into district(id,name, island_id)
values
(1, "Central", "Oahu"),
(2, "Leeward", "Oahu"),
(3, "Honolulu", "Oahu"),
(4,"Hawaii", "Hawaii"),
(5,"Hilo-Waiakea", "Hawaii"),
(6,"Kauai", "Kauai"),
(7,"Kauai", "Niihau"),
(8,"Maui", "Maui"),
(9,"Maui", "Molokai"),
(10,"Windward", "Oahu");


insert into facility(id, name, street, zip, city, has_pre_k, is_only_pre_k, phone, fax, email, district_id, count)
values
(1, "Dept of Health", "1250 Punchbowl Street","Honolulu","96813", 0, 0, 8085844400, null, "webmail@doh.hawaii.gov", 3, 0),
(2, "Delete after inital start", "None", "None", 12345, 0, 0, 0, null, "none", 3, 0);
