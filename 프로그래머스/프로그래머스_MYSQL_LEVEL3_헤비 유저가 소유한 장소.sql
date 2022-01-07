-- programmers: 헤비 유저가 소유한 장소

-- 풀이1
select A.id, A.name, A.host_id
from places A,
(select host_id
 from places
 group by host_id
    having count(host_id) >= 2) B
where A.host_id = B.host_id
order by A.id

-- 풀이2
select *
from places A
where host_id in (
    select host_id
    from places B
    group by host_id
    having count(host_id) >= 2)
order by A.id
;