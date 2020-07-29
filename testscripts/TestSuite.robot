*** Settings ***
Library  SeleniumLibrary
Suite Setup      Log  I am in Suite setup
Suite Teardown   Log  I am in Suite Teardown
Test Setup       InitialSetup
Test Teardown    TearDownSetup 
Default Tags     Sanity

*** Variables ***
@{LOGINURL}     https://www.google.com/     
${ORMLOGINURL}  https://opensource-demo.orangehrmlive.com/
${BROWSER}      Chrome
${EXECDIR}      C:/Rahul/ITMSAutomation/Backup/21-07-20-V2/ITMSAutomationV2/src/main/resources/drivers/chromedriver.exe

*** Keywords ***
InitialSetup    
     Log  InitialSetup
    # Open Browser   https://www.google.com/    ${BROWSER}
    # Set Browser Implicit Wait    5
    # Maximize Browser Window      

TearDownSetup
    Log  TearDownSetup
     #Close Browser
     
*** Test Cases ***
FirstTest
    [Tags]    Smoke
    Log  First Selenium Test

SecondSeleniumTest
   # Create Webdriver  Chrome  executable_path=C:/Rahul/ITMSAutomation/Backup/21-07-20-V2/ITMSAutomationV2/src/main/resources/drivers/chromedriver.exe
    Log    Second Selenium Test
    Set Tags   Regression
    Remove Tags   Regression 
    # Input Text    name=q   RobotFramework    
    # Press Keys    name=q   ENTER
    # #Click Button    name=btnK
    # Sleep    2  
    # Log    Test Completed     
    
    