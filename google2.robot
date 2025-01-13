*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    https://www.google.com
${BROWSER}    chrome

*** Test Cases ***
ทดสอบใส่คำค้น PIM ควรเจอ สถาบันการจัดการปัญญาภิวัฒน์
    เปิดเว็บเบาเซอร์และเข้า Google
    ใส่คำค้นหา
    กดปุ่ม Enter
    ตรวจสอบผลการค้นหา

*** Keywords ***
เปิดเว็บเบาเซอร์และเข้า Google
    Open Browser    ${URL}    ${BROWSER}

ใส่คำค้นหา
    Input Text    name=q    PIM

กดปุ่ม Enter
    Press Keys    NONE    RETURN

ตรวจสอบผลการค้นหา
    Wait Until Page Contains    สถาบันการจัดการปัญญาภิวัฒน์