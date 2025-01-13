*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    https://www.google.com
${BROWSER}    chrome

*** Test Cases ***
ทดสอบใส่คำค้น PIM ควรเจอ สถาบันการจัดการปัญญาภิวัฒน์
    เปิดเว็บเบาเซอร์และเข้า Google
    ใส่คำค้นหา    PIM
    กดปุ่ม Enter
    ตรวจสอบผลการค้นหา    สถาบันการจัดการปัญญาภิวัฒน์
ทดสอบใส่คำค้น allonline ควรเจอ สถาบันการจัดการปัญญาภิวัฒน์
    เปิดเว็บเบาเซอร์และเข้า Google
    ใส่คำค้นหา    allonline
    กดปุ่ม Enter
    ตรวจสอบผลการค้นหา    ช้อปสินค้า ALL Online
ทดสอบใส่คำค้น เซเว่น ควรเจอ สถาบันการจัดการปัญญาภิวัฒน์
    เปิดเว็บเบาเซอร์และเข้า Google
    ใส่คำค้นหา    เซเว่น
    กดปุ่ม Enter
    ตรวจสอบผลการค้นหา    7-Eleven Thailand

*** Keywords ***
เปิดเว็บเบาเซอร์และเข้า Google
    Open Browser    ${URL}    ${BROWSER}

ใส่คำค้นหา
    [Arguments]    ${คำค้น}
    Input Text    name=q    ${คำค้น}

กดปุ่ม Enter
    Press Keys    NONE    RETURN

ตรวจสอบผลการค้นหา
    [Arguments]    ${คำที่ต้องเจอ}
    Wait Until Page Contains    ${คำที่ต้องเจอ}