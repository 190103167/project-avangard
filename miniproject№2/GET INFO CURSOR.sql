--GET ALL PRODUCTS
SET SERVEROUTPUT ON
declare
    cursor prod is select * from products;
    prodall prod%rowtype;
begin
    open prod;
    loop 
    fetch prod into prodall;
    exit when prod%notfound;
    dbms_output.put_line('Product_id: '||prodall.product_id|| '  Product_name: '|| prodall.product_name ||'  Price: '|| prodall.price);
    end loop;
end;

--GET ALL CATEGORIES
SET SERVEROUTPUT ON
declare
    cursor categor is select * from categories;
    categorall categor%rowtype;
begin
    open categor;
    loop 
    fetch categor into categorall;
    exit when categor%notfound;
    dbms_output.put_line('Category_id: '||categorall.category_id || '  Category_name: '|| categorall.category_name);
    end loop;
end;

--GET ALL PRODUCTS FROM STORE
SET SERVEROUTPUT ON
declare
    cursor prodstor is select * from product_store;
    prodstorall prodstor%rowtype;
begin
    open prodstor;
    loop 
    fetch prodstor into prodstorall;
    exit when prodstor%notfound;
    dbms_output.put_line('Product_id: '||prodstorall.product_id || '  Store_id: '|| prodstorall.store_id);
    end loop;
end;

--GET INFO ABOUT CUSTOMER
SET SERVEROUTPUT ON
declare
    cursor cust is select * from customer;
    custall cust%rowtype;
begin
    open cust;
    loop 
    fetch cust into custall;
    exit when cust%notfound;
    dbms_output.put_line('Customer_id: '||custall.customer_id || '  Name: '||custall.first_name||' '||custall.last_name||' Email: '||custall.email||' Number: '||custall.telephone);
    end loop;
end;

--GET INFO ADDRESS
SET SERVEROUTPUT ON
declare
    cursor addr is select * from address;
    addrall addr%rowtype;
begin
    open addr;
    loop 
    fetch addr into addrall;
    exit when addr%notfound;
    dbms_output.put_line('Customer_id: '||addrall.customer_id || ' Address_id: '||addrall.address_id||' Address Name: '||addrall.address);
    end loop;
end;

--GET DESCRIPTION OF PRODUCTS
SET SERVEROUTPUT ON
declare
    cursor proddesc is select * from product_description;
    proddescall proddesc%rowtype;
begin
    open proddesc;
    loop 
    fetch proddesc into proddescall;
    exit when proddesc%notfound;
    dbms_output.put_line('Product_id: '||proddescall.product_id || ' Product_name: '||proddescall.product_name||' Description: '||proddescall.description);
    end loop;
end;
--
