--ADD PRODUCT
create or replace procedure add_product(p_id number,prod_name varchar2,p_price number)
is
begin
insert into products values (p_id,prod_name,p_price);
commit;
end;

--ADD PRODCATEGORY
create or replace procedure add_prodcategory(p_id number,c_id number)
is
begin
insert into product_category values (p_id,c_id);
commit;
end;

--ADD CATEGORY
create or replace procedure add_category(p_id number,c_name VARCHAR)
is
begin
insert into category values (p_id,c_name);
commit;
end;

--ADD CUSTOMER
create or replace procedure add_customer(c_id number,s_id number,f_name varchar,l_name varchar,c_email varchar,c_num number)
is
begin
insert into customer values (c_id,s_id,f_name,l_name,c_email,c_num);
commit;
end;

--ADD CART
create or replace procedure add_cart(c_id number,p_id number, cu_id number)
is
begin
insert into cart values (c_id,p_id,cu_id);
commit;
end;

--ADD DECRIPTION
create or replace procedure add_description(p_id number,p_desc varchar)
is
begin
insert into product_description values (p_id,p_desc);
commit;
end;

--ADD ADDRESS
create or replace procedure add_address(a_id number,c_id number,p_add varchar)
is
begin
insert into address values (a_id,c_id,p_add);
commit;
end;

--ADD STORE
create or replace procedure add_store(s_id number,s_name varchar,s_mark number)
is
begin
insert into store values (s_id,s_name,s_mark);
commit;
end;

--ADD PRODSTORE
create or replace procedure add_prodstore(p_id number,s_id number)
is
begin
insert into product_store values (p_id,s_id);
commit;
end;
