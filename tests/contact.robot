*** Settings ***
Library    Browser

*** Test Cases ***

 Lunds TetraPak-office is visible in Sweden in contact info
    New Browser    headless=${FALSE}
    New Page       https://www.tetrapak.com/sv-se
    Browser.Click    xpath =//a[contains(text(),'Sweden')]
    Get Text    xpath =//h3[contains(text(),'Sweden')]
    Get Text    xpath =//h4[contains(text(),'Stockholm')]

