***Settings***
Resource          Resource/PageKeyword/HerokuappPageKeyword.robot

***Test Cases***
Login success
    Open Herokuapp
    Login    tomsmith    SuperSecretPassword!
    Verify Login and Logout Success
    [Teardown]    Close Browser

Login failed - Password incorrect
    Open Herokuapp
    Login    tomsmith    Password!
    Verify Login Failed Case Password incorrect
    [Teardown]    Close Browser

Login failed - Username not found
    Open Herokuapp
    Login    tomholland    Password!
    Verify Login Failed Case Username Not Found
    [Teardown]    Close Browser

