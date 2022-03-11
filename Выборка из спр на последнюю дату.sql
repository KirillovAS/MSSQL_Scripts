select * from ks_ddlcontrol.cl_935_2464 t2 
inner join ks_ddlcontrol.cl_935_2462 t1 on t1.id=t2.id_up
inner join (select t1.id, max(at_2493) as max_date 
from ks_ddlcontrol.cl_935_2464 t2 inner join ks_ddlcontrol.cl_935_2462 t1 on t1.id=t2.id_up
group by t1.id) md 
on t1.id=md.id and isnull(t2.at_2493,0)=isnull(md.max_date,0)
