set @a := 21;
select repeat('* ', @a := @a - 1)
from information_schema.tables;