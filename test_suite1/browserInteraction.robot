*** Settings ***
Library    SeleniumLibrary

Suite Setup    Log    Inside Suite Setup
Suite Teardown    Log    Inside Suite TearDown
Test Setup    Log    Inside Test Setup
Test Teardown    Log    Inside Test TearDown

Default Tags    Sanity

*** Variables ***
${browser}    chrome
${url}    https://google.com

*** Keywords ***
Go to Google
    Open Browser    ${url}    ${browser}
    
*** Test Cases ***
BrowserLaunch
    [Tags]    Sanity1
    Log    !!! browser launch started !!!
    Go to Google
    Log    !!! brower launch finished !!!

SearchText
    [Tags]    Sanity2
    Set Browser Implicit Wait    5
    Input Text    name=q    reddit soccer
    # Press Keys    name=q    ENTER
    Click Button  name=btnK   
    Sleep    5
    Close Browser