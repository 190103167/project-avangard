--UPDATE PRODUCT
create or replace procedure upd_product(num number,str varchar2,p_id number,prod_name varchar2,p_price number)
is
begin
if num=1 then
    if str='price' then 
        update products set price=p_price WHERE product_id=p_id;
    elsif str='name' then
        update products set product_name=prod_name WHERE product_id=p_id;
    end if;
elsif num=2 then
    update products set product_name=prod_name, price=p_price WHERE product_id=p_id;
end if;
commit;
end;

--UPDATE DESCRIPTION
create or replace procedure upd_description(p_id int,p_desc varchar)
is
begin
update product_description set description=p_desc WHERE product_id=p_id;
commit;
end;

--UPDATE CATEGORY
create or replace procedure upd_category(c_id int,c_name varchar)
is
begin
update category set category_name=c_name WHERE category_id=c_id;
commit;
end;

--UPDATE STORE
create or replace procedure upd_store(num number,str varchar2,s_id number,stor_name varchar2,s_mark number)
is
begin
if num=1 then
    if str='rating' then 
        update store set rating=s_mark WHERE store_id=s_id;
    elsif str='name' then
        update store set store_name=stor_name WHERE store_id=s_id;
    end if;
elsif num=2 then
    update store set store_name=stor_name, rating=s_mark WHERE store_id=s_id;
end if;
commit;
end;

--UPDATE ADDRESS
create or replace procedure upd_address(a_id int, a_add varchar)
is
begin
update address set address=a_add WHERE address_id=a_id;
commit;
end;

--UPDATE CUSTOMER
create or replace procedure upd_customer(str varchar2,c_id number,x_name varchar2,f_num number)
is
begin
if str='store_id' then 
    update customer set store_id=f_num WHERE customer_id=c_id;
elsif str='f_name' then 
    update customer set first_name=x_name WHERE customer_id=c_id;
elsif str='l_name' then 
    update customer set last_name=x_name WHERE customer_id=c_id;
elsif str='email' then 
    update customer set email=x_name WHERE customer_id=c_id;
elsif str='telephone' then 
    update customer set telephone=f_num WHERE customer_id=c_id;
end if;
commit;
end;

--UPDATE CART
create or replace procedure upd_cart(c_id int, p_id int)
is
begin
update cart set product_id=p_id WHERE cart_id=c_id;
commit;
end;