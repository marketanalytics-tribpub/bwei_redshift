drop table if exists bwtst_temptest1;
create table bwtst_temptest1 as
select * from mg2_raw limit 100;
commit;
