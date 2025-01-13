*** Settings ***
Resource            keywords.resource
Variables           keywords.resource

Suite Setup         เปิดเว็บเบาเซอร์
Suite Teardown      Close All Browsers
Test Setup          ไปที่ URL
Test Template       ค้นหาและตรวจสอบ


*** Test Cases ***    คำค้น    ผลการค้นหา
ทดสอบใส่คำค้น PIM ควรเจอ สถาบันการจัดการปัญญาภิวัฒน์    PIM    สถาบันการจัดการปัญญาภิวัฒน์
ทดสอบใส่คำค้น allonline ควรเจอ ช้อปสินค้า ALL Online    allonline    ALL Online
ทดสอบใส่คำค้น เซเว่น ควรเจอ 7-Eleven Thailand    เซเว่น    7-Eleven Thailand
