from playwright.sync_api import Playwright, sync_playwright, expect

def run(playwright: Playwright) -> None:
    browser = playwright.chromium.launch(headless=False)
    context = browser.new_context()
    context.tracing.start(screenshots=True, snapshots=True, sources=True)

    page = context.new_page()

    page.goto("https://demo.opencart.com/")
    page.get_by_role("link", name="Mac (1)").click()
    page.get_by_text("iMac", exact=True).click()
    page.get_by_text("Add to Cart").click()
    page.get_by_role("link", name="Monitors (2)").click()
    page.get_by_text("Samsung SyncMaster 941BW").click()
    page.get_by_role("button", name="Add to Cart").click()
    page.get_by_role("link", name="Cameras").click()
    page.get_by_text("Canon EOS 5D").click()
    page.get_by_role("button", name="Add to Cart").click()
    page.get_by_role("link", name=" Shopping Cart").click()

    context.tracing.stop(path="opencart_trace.zip")

    # ---------------------
    context.close()
    browser.close()


with sync_playwright() as playwright:
    run(playwright)

#playwright codegen xxx (xxx = link website)
# [before page =] context.tracing.start(screenshots=True, snapshots=True, sources=True) => [before context.close()] context.tracing.stop(path="filename.zip")
#cd to .py folder => pytest filename.py
#playwright show-trace filename.zip