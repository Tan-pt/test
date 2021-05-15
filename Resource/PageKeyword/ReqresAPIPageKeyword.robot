***Settings***
Library    RequestsLibrary
Resource          ../PageVariable/ReqresAPIPageVariable.robot

***Keywords***
Get Request User Case Success
    Create Session    API    ${URLReqres}
    ${resp}=     Get Request    API    /12
    Should Be Equal As Strings    ${resp.status_code}    ${200}
    ${dictJson}    to json    ${resp.text}
    ${ID}    Set Variable    ${dictJson['data']['id']}
    ${Email}    Set Variable    ${dictJson['data']['email']}
    ${FirstName}    Set Variable    ${dictJson['data']['first_name']}
    ${LastName}    Set Variable    ${dictJson['data']['last_name']}
    ${Avatar}    Set Variable    ${dictJson['data']['avatar']}
    Should Be Equal As Strings    ${ID}    ${ID25}
    Should Be Equal As Strings    ${Email}    ${EmailID12}
    Should Be Equal As Strings    ${FirstName}    ${FirstnameID12}
    Should Be Equal As Strings    ${LastName}    ${LastnameID12}
    Should Be Equal As Strings    ${Avatar}    ${imgID12}

Get Request User Case User Not Found
    Create Session    API    ${URLReqres}
    ${resp}=     Get Request    API    /1234
    Should Be Equal As Strings    ${resp.status_code}    ${404}
    log    ${resp.text}
    Should Be Equal As Strings    ${resp.text}    {}