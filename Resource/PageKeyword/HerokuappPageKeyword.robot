***Settings***
Library          SeleniumLibrary
Resource          ../PageRepository/HerokuappPageRepository.robot
Resource          ../PageVariable/HerokuappPageVariable.robot

***Keywords***
Open Herokuapp
    SeleniumLibrary.Open Browser    ${URLHerokuapp}    gc
    Maximize Browser Window

Login
    [Arguments]    ${Username}    ${Password}
    Wait Until Element Is Visible    ${txtUsername}    ${Timeout}
    Input Text    ${txtUsername}    ${Username}
    Input Text    ${txtPassword}    ${Password}
    Capture Page Screenshot    Login
    Click Element    ${btnLogin}

Verify Login and Logout Success
    Wait Until Element Contains    ${lblYouLogged}    ${msgLoginSuccess}    ${Timeout}
    Capture Page Screenshot    Verify Login Success
    Click Element    ${btnLogout}
    Wait Until Element Contains    ${lblYouLogged}    ${msgLogoutSuccess}    ${Timeout}
    Capture Page Screenshot    Verify Logout Success

Verify Login Failed Case Password incorrect
    Wait Until Element Contains    ${lblYouLogged}    ${msgIncorrectPassword}    ${Timeout}
    Capture Page Screenshot    Verify Login Failed Case Password incorrect

Verify Login Failed Case Username Not Found
    Wait Until Element Contains    ${lblYouLogged}    ${msgUsernameNotFound}    ${Timeout}
    Capture Page Screenshot    Verify Login Failed Case Username Not Found