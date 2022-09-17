*** Settings ***
Library           SeleniumLibrary
Library           Screenshot
Library           xlrd
Library           openpyxl
Library           ExcelLibrary
Library           DatabaseLibrary
Library           ../../../../Software/Python/Python37/Scripts/Excel_read.py
Resource          ../../../../Software/Python/Python37/Data/CommonlyUsedKeywords.txt
Library           OpenPyxlLibrary
Library           Collections
Library           String
Library           robot.api.logger

*** Test Cases ***
TestCase_1
    [Tags]    tag1
    Open Browser    http://sampleapp.tricentis.com/101/index.php    chrome
    Click Element    xpath://*[@id="nav_automobile"][1]
    sleep    5
    Screenshot.Take Screenshot
    Select From List By Index    make    2
    sleep    5
    Screenshot.Take Screenshot
    Select From List By Label    make    BMW
    sleep    5
    Take Screenshot
    Input Text    engineperformance    65
    sleep    2
    Screenshot.Take Screenshot
    Input Text    dateofmanufacture    01/01/2022
    sleep    2
    Screenshot.Take Screenshot
    Select From List By Index    numberofseats    5
    Select From List By Label    fuel    Petrol
    Input Text    listprice    100000
    sleep    2
    Input Text    licenseplatenumber    AD555
    Input Text    annualmileage    21000
    sleep    5
    Screenshot.Take Screenshot
    Click Element    nextenterinsurantdata
    sleep    5
    Screenshot.Take Screenshot
    Page Should Contain    First Name
    Close Browser

TestCase_2
    [Tags]    tag1
    ${TC_Name}    Set Variable    TestCase_2
    ${URL}    Read Data From Master Sheet    Sheet1    ${TC_Name}    URL
    Open Browser    ${URL}    Chrome
    Click Element    xpath://*[@id="nav_automobile"][1]
    sleep    5
    ${make}    Read Data From Master Sheet    Sheet1    ${TC_Name}    make
    log    ${make}
    Select From List By Label    make    ${make}
    ${engineperformance}    Read Data From Master Sheet    Sheet1    ${TC_Name}    engineperformance
    log    ${engineperformance}
    Input Text    engineperformance    ${engineperformance}
    ${dateofmanufacture}    Read Data From Master Sheet    Sheet1    ${TC_Name}    dateofmanufacture
    log    ${dateofmanufacture}
    Input Text    dateofmanufacture    ${dateofmanufacture}
    sleep    10
    ${numberofseats}    Read Data From Master Sheet    Sheet1    ${TC_Name}    numberofseats
    log    ${numberofseats}
    Select From List By Label    numberofseats    ${numberofseats}
    ${fuel}    Read Data From Master Sheet    Sheet1    ${TC_Name}    fuel
    log    ${fuel}
    Select From List By Label    fuel    ${fuel}
    ${listpricel}    Read Data From Master Sheet    Sheet1    ${TC_Name}    listprice
    log    ${listpricel}
    Input Text    listprice    ${listpricel}

TestCase_3
    [Tags]    tag1
    ${TC_Name}    Set Variable    TestCase_3
    ${URL}    Read Data From Master Sheet    Sheet1    ${TC_Name}    URL
    Open Browser    ${URL}    Chrome
    Click Element    xpath://*[@id="nav_automobile"][1]
    sleep    5
    ${make}    Read Data From Master Sheet    Sheet1    ${TC_Name}    make
    log    ${make}
    Select From List By Label    make    ${make}
    ${engineperformance}    Read Data From Master Sheet    Sheet1    ${TC_Name}    engineperformance
    log    ${engineperformance}
    Input Text    engineperformance    ${engineperformance}
    ${dateofmanufacture}    Read Data From Master Sheet    Sheet1    ${TC_Name}    dateofmanufacture
    log    ${dateofmanufacture}
    Input Text    dateofmanufacture    ${dateofmanufacture}
    sleep    10
    ${numberofseats}    Read Data From Master Sheet    Sheet1    ${TC_Name}    numberofseats
    log    ${numberofseats}
    Select From List By Label    numberofseats    ${numberofseats}
    ${fuel}    Read Data From Master Sheet    Sheet1    ${TC_Name}    fuel
    log    ${fuel}
    Select From List By Label    fuel    ${fuel}
    ${listpricel}    Read Data From Master Sheet    Sheet1    ${TC_Name}    listprice
    log    ${listpricel}
    Input Text    listprice    ${listpricel}
