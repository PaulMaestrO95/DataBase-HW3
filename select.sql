select name, releaseyear from album
where releaseyear between '20180101' and '20181231'

select name, duration from track
order by duration desc
limit 1

select name from track
where duration > 210

select name from collection
where releaseyear between '20180101' and '20201231'

select alias from artist
where alias not like '% %'

select name from track
where name  like '%Мой%' or name like '%My%'