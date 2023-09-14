***Settings***
Resource            import/import.robot
Suite Teardown      Close All Browsers

***Keywords***
Open web
    Open Browser         ${browser}        browser=${platform}
    Maximize Browser Window
    Sleep                ${time}  

Hover component button
    Mouse Over          ${component_bt}
    Sleep               ${time}

Select monitor button    
    Click Element       ${monitor_bt}
    Sleep               ${time}  

Select monitor product     
    Click Element       ${monitor_product}
    Sleep               ${time}

Select small ratio
    Click Element       ${small_ratio}

Select checkbox 4    
    Click Element       ${checkbox_4}

Select blue color    
    Click Element       ${select_form}
    Sleep               ${time}
    Click Element       ${select_form_blue}

Input discount message
    [Arguments]         ${message}        
    Input text          ${textbox}             ${message}
    
Click add to cart    
    Sleep               ${time}
    Click Button        ${addtocart}

Click cameras button
    Click Element       ${cameras_bt}

Choose camera product    
    Sleep               ${time}
    Click Element       ${cameras_product}


***Test Cases***
OC_TC1 Verify that monitor feature can open
    Open web
    Hover component button
    Select monitor button
    Select monitor product
    Select small ratio
    Select checkbox 4
    Select blue color
    Input discount message              Buy with discount
    Click add to cart

OC_TC2 Verify that camera feature can open
    Open web
    Click cameras button
    Choose camera product
    Click add to cart
