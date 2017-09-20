select a.owner "Владелец объекта",
a.obj_name "Имя объекта",
o.object_type "Тип объекта",
count(*) "Количество обращений"
from dba_audit_trail a, dba_objects o
where a.owner=o.owner
and a.obj_name=o.object_name
group by a.owner, a.obj_name, o.object_type
order by 1, 3, 4
