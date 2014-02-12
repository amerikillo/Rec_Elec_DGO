/*
Resoviendo Ampuleo gnkl ...
*/
SET FOREIGN_KEY_CHECKS=0;

use r_d;

create table  receta_back as (select * from receta);

drop table receta;

create table  receta as (select folio_re, fecha_re, hora, juris, no_juris, unidad, nombre_pac, edad, folio_sp, afiliado, univer_medi, cedula_medi, nombre_medi, causes, clave, descrip, cant_sol, cant_sur, surtido, encargado, clave_uni, id_med, cv_uni_dgo, cv_tipo_unidad, cv_financ, fuente, layout, partida, present, cant_pendi, status_receta, tipo_receta, precio, precio_tt, lote, caducidad, carnet, servicio, date, tipo_cap, 7 as aux7,8 as aux8,9 as aux9,10 as aux10,11 as aux11,12 as aux12,13 as aux13,14 as aux14,15 as ampuleo, id from receta_back);
update receta set aux7=replace(aux7,'7','-')where aux7=7;          
update receta set aux8=replace(aux8,'8','-')where aux8=8;
update receta set aux9=replace(aux9,'9','-')where aux9=9;
update receta set aux10=replace(aux10,'10','-')where aux10=10;
update receta set aux11=replace(aux11,'11','-')where aux11=11;
update receta set aux12=replace(aux12,'12','-')where aux12=12;
update receta set aux13=replace(aux13,'13','-')where aux13=13;
update receta set aux14=replace(aux14,'14','-')where aux14=14;
update receta SET ampuleo='-';
UPDATE receta a, pasti_ampu b SET a.ampuleo=REPLACE(a.ampuleo,'0','1')where a.clave=b.clave;

BEGIN;
COMMIT;
