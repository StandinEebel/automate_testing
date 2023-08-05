import asyncio
from playwright.async_api import async_playwright

async def main():
    async with async_playwright() as p:
        browser = await p.chromium.launch(headless=False)
        page = await browser.new_page()
        await page.goto("https://www.codium.co/")
        await page.get_by_text("Product Services").click()
        await page.get_by_text("e-Tax Invoice & e-Receipt").click()
        await page.mouse.wheel(0, 4000)
        await page.get_by_role("button", name="ยอมรับทั้งหมด").click()
        await page.locator("//select[@class='border border-gray-300 rounded-lg text-primary text-gray-600 h-14 sm:h-10 md:ml-5 pl-5 pr-10 font-light bg-white hover:border-gray-400 focus:outline-none appearance-none w-full text-3xl sm:text-2xl xl:text-xs']").select_option('10,001 - 100,000')
        await page.screenshot(path="etaxresult.png")
        await page.wait_for_timeout(10000)

asyncio.run(main())    
