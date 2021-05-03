--DELETE PRODUCT
create or replace procedure del_product(p_id number,c_id number)
is
begin
DELETE FROM products WHERE product_id=p_id;
commit;
end;

--DELETE DESCRIPTION
create or replace procedure del_description(p_id number,c_id number)
is
begin
DELETE FROM product_description WHERE product_id=p_id;
commit;
end;

--DELETE CATEGORY
create or replace procedure del_category(p_id number,c_id number)
is
begin
DELETE FROM category WHERE category_id=p_id;
commit;
end;

--DELETE PRODUCT_CATEGORY
create or replace procedure del_prodcategory(p_id number,c_id number)
is
begin
DELETE FROM product_category WHERE product_id=p_id;
commit;
end;

--DELETE CART
create or replace procedure del_cart(p_id number,c_id number)
is
begin
DELETE FROM cart WHERE product_id=p_id;
commit;
end;

--DELETE STORE
create or replace procedure del_store(p_id number,c_id number)
is
begin
DELETE FROM store WHERE store_id=p_id;
commit;
end;

--DELETE CUSTOMER
create or replace procedure del_customer(p_id number,c_id number)
is
begin
DELETE FROM customer WHERE customer_id=p_id;
commit;
end;

--DELETE ADDRESS
create or replace procedure del_address(p_id number,c_id number)
is
begin
DELETE FROM address WHERE address_id=p_id;
commit;
end;

--DELETE PRODUCT_STORE
create or replace procedure del_prodstore(p_id number,c_id number)
is
begin
DELETE FROM product_store WHERE product_id=p_id;
commit;
end;
