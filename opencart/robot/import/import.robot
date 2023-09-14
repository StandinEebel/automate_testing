***Settings***
Library             SeleniumLibrary

***Variables***
${browser}                  https://demo.opencart.com/ 
${platform}                 chrome
${time}                     2s
${component_bt}             //a[@href='https://demo.opencart.com/index.php?route=product/category&language=en-gb&path=25' and @class='nav-link dropdown-toggle']
${monitor_bt}               //a[@href='https://demo.opencart.com/index.php?route=product/category&language=en-gb&path=25_28']
${monitor_product}          //a[@href='https://demo.opencart.com/index.php?route=product/product&language=en-gb&path=25_28&product_id=42' and contains(text(),'Apple Cinema 30"')]
${small_ratio}              //input[@name='option[218]' and @value='5']
${checkbox_4}               //input[@type='checkbox' and @value='11']
${select_form}              //select[@class='form-select']
${select_form_blue}         //option[@value='3']
${textbox}                  //textarea[@name='option[209]']
${addtocart}                //button[@type='submit' and contains(text(),'Add to Cart')]
${cameras_bt}               //a[@href='https://demo.opencart.com/index.php?route=product/category&language=en-gb&path=33']
${cameras_product}          //img[@src="https://demo.opencart.com/image/cache/catalog/demo/canon_eos_5d_1-250x250.jpg"]

