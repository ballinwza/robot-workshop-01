*** Settings ***
Library             SeleniumLibrary

Suite Setup         เปิดเว็บเบาเซอร์
Suite Teardown      Close All Browsers
Test Setup          ไปที่ URL
Test Template       ค้นหาและตรวจสอบ


*** Variables ***
${URL}          https://www.google.com
${BROWSER}      headlesschrome


*** Test Cases ***    คำค้น    ผลการค้นหา
ทดสอบใส่คำค้น PIM ควรเจอ สถาบันการจัดการปัญญาภิวัฒน์    PIM    สถาบันการจัดการปัญญาภิวัฒน์
ทดสอบใส่คำค้น allonline ควรเจอ ช้อปสินค้า ALL Online    allonline    ALL Online
ทดสอบใส่คำค้น เซเว่น ควรเจอ 7-Eleven Thailand    เซเว่น    7-Eleven Thailand


*** Keywords ***
เปิดเว็บเบาเซอร์
    Open Browser    browser=${BROWSER}

ไปที่ URL
    Go To    ${URL}

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
