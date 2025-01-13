*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${URL}          https://www.google.com
${BROWSER}      headlesschrome


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
