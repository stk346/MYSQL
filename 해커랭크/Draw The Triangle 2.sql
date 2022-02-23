set @a := 0;

select repeat('* ', @a := @a + 1)
from information_schema.tables
where @a < 20