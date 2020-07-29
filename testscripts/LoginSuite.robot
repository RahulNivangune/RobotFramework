*** Settings ***
Library  SeleniumLibrary

Test Teardown    Close Browser
*** Variables ***
@{LOGIN URL}    https://www.google.com/     
${ORMLOGIN URL}    https://opensource-demo.orangehrmlive.com/
${BROWSER}      Chrome
${EXECDIR}      C:/Rahul/ITMSAutomation/Backup/21-07-20-V2/ITMSAutomationV2/src/main/resources/drivers/chromedriver.exe

*** Keywords ***
LoginUrl    
    Open Browser  https://www.google.com/    ${BROWSER}
    Set Browser Implicit Wait    5
    Maximize Browser Window   
    Go To    ${ORMLOGIN URL}

*** Test Cases ***
FirstTest
    Log  Hello World..

SecondSeleniumTest
   # Create Webdriver  Chrome  executable_path=C:/Rahul/ITMSAutomation/Backup/21-07-20-V2/ITMSAutomationV2/src/main/resources/drivers/chromedriver.exe
    LoginUrl
    Log    Test Started 
    Input Text    name=q   RobotFramework    
    Press Keys    name=q   ENTER
    #Click Button    name=btnK
    Sleep    2        
    Close Browser
    Log    Test Completed    
    
LoginTest
    [Documentation]  This is a OrangeHRM Application Login Test
    Create Webdriver  Chrome   executable_path=C:/Rahul/ITMSAutomation/Backup/21-07-20-V2/ITMSAutomationV2/src/main/resources/drivers/chromedriver.exe    
    Maximize Browser Window
    Set Browser Implicit Wait    5
    Go To   ${LOGIN URL}[1]
    Log    Test Started 
    Input Text    name=txtUsername    Admin  
    Input Password    name=txtPassword    admin123  
    Click Button    id=btnLogin
    Click Element    id=welcome
    Click Element    link=Logout      
    Close Browser  
    Log    Test Completed
    
    
    