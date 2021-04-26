"#! /bin/bash

createdb test_db
psql test_db
create user fusionqaintern_Svetlana_Klopot inherit login encrypted password '12345678' in role fusionqaintern;


