describe('opencart example', () => {
    it('opencart TC', () => {
      cy.visit('https://demo.opencart.com/', { timeout: 5000 })
      cy.get("a[href='https://demo.opencart.com/index.php?route=product/category&language=en-gb&path=24']").click()
      cy.get(".btn.btn-light.btn-lg").click()
      cy.get('input[id="input-search"]').type('iPhone{enter}')
    })
  })
 
  