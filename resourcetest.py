import asyncio
from playwright.async_api import async_playwright

async def main():
    async with async_playwright() as p:
        browser = await p.chromium.launch(headless=False)
        page = await browser.new_page()
        await page.goto("https://www.codium.co/")
        await page.get_by_text("Newsfeed").click()
        await page.get_by_text("Resources").click()
        await page.get_by_role("button", name="ยอมรับทั้งหมด").click()
        await page.get_by_placeholder("search").fill("e-Memo")
        await page.screenshot(path="resourceresult.png")
        await page.wait_for_timeout(10000)
        
asyncio.run(main())    
