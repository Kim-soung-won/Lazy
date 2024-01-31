-- 코드를 입력하세요

    SELECT DATE_FORMAT(SALES_DATE,"%Y-%m-%d") SALES_DATE,
        PRODUCT_ID,
        USER_ID,
        SALES_AMOUNT
    FROM ONLINE_SALE
    WHERE sales_date >= '2022-03-01' and sales_date < '2022-04-01'

UNION ALL

    SELECT DATE_FORMAT(SALES_DATE,"%Y-%m-%d") SALES_DATE,
        PRODUCT_ID,
        NULL AS USER_ID,
        SALES_AMOUNT
    FROM OFFLINE_SALE 
    WHERE sales_date >= '2022-03-01' and sales_date < '2022-04-01'
    
ORDER BY SALES_DATE , PRODUCT_ID , USER_ID