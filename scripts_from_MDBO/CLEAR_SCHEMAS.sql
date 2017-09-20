declare
  l_schema varchar2(100) := '<schema>';
  l_comand varchar2(100);
begin
  -- Функции
  for cur in (select * from dba_objects o where o.owner = l_schema and o.object_type = 'FUNCTION') loop
    l_comand := 'drop function '||cur.owner||'.'||cur.object_name;
    execute immediate l_comand;
  end loop;
  -- Процедуры
  for cur in (select * from dba_objects o where o.owner = l_schema and o.object_type = 'PROCEDURE') loop
    l_comand := 'drop procedure '||cur.owner||'.'||cur.object_name;
    execute immediate l_comand;
  end loop;
  -- Пакеты
  for cur in (select * from dba_objects o where o.owner = l_schema and o.object_type = 'PACKAGE') loop
    l_comand := 'drop package '||cur.owner||'.'||cur.object_name;
    execute immediate l_comand;
  end loop;
  -- Типы
  for i in 1..15 loop
    for cur in (select * from dba_types t where t.owner = l_schema and t.type_name<>'AUTOLD_ADDMESSAGE') loop
      l_comand := 'drop type '||cur.owner||'."'||cur.type_name||'"';
      begin
        execute immediate l_comand;
      exception when others then null;
      end;
    end loop;
  end loop;
  -- Таблицы
  for cur in (select * from dba_objects o where o.owner = l_schema and o.object_type = 'TABLE' and object_name <> 'NESTED_TARIF_VALUES') loop
    l_comand := 'drop table '||cur.owner||'.'||cur.object_name||' cascade constraints purge';
    --dbms_output.put_line(l_comand);
    execute immediate l_comand;
  end loop;
  -- Вьюхи
  for cur in (select * from dba_objects o where o.owner = l_schema and o.object_type = 'VIEW') loop
    l_comand := 'drop view '||cur.owner||'.'||cur.object_name;
    --dbms_output.put_line(l_comand);
    execute immediate l_comand;
  end loop;
  -- Последовательности
  for cur in (select * from dba_objects o where o.owner = l_schema and o.object_type = 'SEQUENCE') loop
    l_comand := 'drop SEQUENCE '||cur.owner||'.'||cur.object_name;
    --dbms_output.put_line(l_comand);
    execute immediate l_comand;
  end loop;
  -- Синонимы
  for cur in (select * from dba_objects o where o.owner = l_schema and o.object_type = 'SYNONYM') loop
    l_comand := 'drop SYNONYM '||cur.owner||'.'||cur.object_name;
    --dbms_output.put_line(l_comand);
    execute immediate l_comand;
  end loop;
end;

