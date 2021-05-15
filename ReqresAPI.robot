*** Settings ***
Resource          Resource/PageKeyword/ReqresAPIPageKeyword.robot

***Test Cases***

Get user profile success 
    Get Request User Case Success

Get user profile but user not found 
    Get Request User Case User Not Found 