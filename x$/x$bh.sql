create view x_$bh as select * from x$bh;
create public synonym x$bh for x_$bh;
grant select on x_$bh to SIP_W;