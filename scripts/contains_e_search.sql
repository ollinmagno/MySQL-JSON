select JSON_CONTAINS_PATH(y, "ONE", "$.telefone") from x;
select JSON_SEARCH(y, "one", "2293-3343"), y from x;
select JSON_CONTAINS(y, '"2293-3343"', "$.telefone") from x;
select *  from x where JSON_CONTAINS(y, '"2293-3343"', "$.telefone") = 1;
select *  from x where JSON_EXTRACT(y, "$.telefone") = '2293-3343';
select JSON_SEARCH(y, "ONE", "2293-3343"), y from x;
insert into x values ('{"nome":"Katia","endereco":"Rua X numero Y", "telefone":"2293-3343", "telefone2":"2293-3343"}');
select JSON_SEARCH(y, "one", "2293-3343"), y from x;
select JSON_SEARCH(y, "all", "2293-3343"), y from x;
