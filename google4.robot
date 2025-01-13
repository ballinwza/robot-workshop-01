*** Settings ***
Library         SeleniumLibrary

Test Setup      เปิดเว็บเบาเซอร์และเข้า Google


*** Variables ***
${URL}          https://www.google.com
${BROWSER}      headlesschrome


*** Test Cases ***
ทดสอบใส่คำค้น PIM ควรเจอ สถาบันการจัดการปัญญาภิวัฒน์
    ค้นหาและตรวจสอบ    PIM    สถาบันการจัดการปัญญาภิวัฒน์

ทดสอบใส่คำค้น allonline ควรเจอ ช้อปสินค้า ALL Online
    ค้นหาและตรวจสอบ    allonline    ALL Online

ทดสอบใส่คำค้น เซเว่น ควรเจอ 7-Eleven Thailand
    ค้นหาและตรวจสอบ    เซเว่น    7-Eleven Thailand


*** Keywords ***
เปิดเว็บเบาเซอร์และเข้า Google
    Open Browser    ${URL}    ${BROWSER}

ค้นหาและตรวจสอบ
    [Arguments]    ${KEYWORD}    ${EXPECTEDRESULT}
    ใส่คำค้นหา    ${KEYWORD}
    กดปุ่ม Enter
    ตรวจสอบผลการค้นหา    ${EXPECTEDRESULT}

ใส่คำค้นหา
    [Arguments]    ${คำค้น}
    Input Text    name=q    ${คำค้น}

กดปุ่ม Enter
    Press Keys    NONE    RETURN

ตรวจสอบผลการค้นหา
    [Arguments]    ${คำที่ต้องเจอ}
    Wait Until Page Contains    ${คำที่ต้องเจอ}
