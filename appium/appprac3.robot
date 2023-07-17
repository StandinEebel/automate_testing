*** Settings ***
Library     AppiumLibrary

*** Keywords ***
Open WallpaperApp
    Open Application        remote_url=http://localhost:4723/wd/hub
    ...                     deviceName=TestDevice
    ...                     platformVersion=10.0
    ...                     platformName=Android
    ...                     appPackage=in.wallpaper.wallpapers
    ...                     appActivity=in.wallpaper.wallpapers.activity.MainActivity

Select Featured
    Wait Until Page Contains Element    android=UiSelector().className("android.widget.TextView").text("Featured")          5s
    Tap                                 xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout
    Tap                                 android=UiSelector().className("android.widget.TextView").text("Featured")

Change Widget
    Tap                                 android=UiSelector().className("android.widget.TextView").text("Glance")
    Tap                                 android=UiSelector().className("android.widget.TextView").text("Widgets")
    Wait Until Page Contains Element    id=in.wallpaper.wallpapers:id/analog_clock4           5s
    Tap                                 id=in.wallpaper.wallpapers:id/analog_clock4 
    Wait Until Page Contains Element    android=UiSelector().className("android.widget.Button").text("Add automatically")        5s
    Click Element                       android=UiSelector().className("android.widget.Button").text("Add automatically")

Close App
    Close Application

*** Test Cases ***
Wallpaper TestApp
    Open WallpaperApp   
    Select Featured 
    Change Widget
    Close App



#{
#  "deviceName": "Test Device",
#  "platformVersion": "10.0",
#  "platformName": "Android",
#  "appPackage": "in.wallpaper.wallpapers",
#  "appActivity": "in.wallpaper.wallpapers.activity.MainActivity"
#}