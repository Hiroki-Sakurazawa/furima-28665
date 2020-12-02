window.addEventListener('load', () => {
  const price = document.getElementById("item-price")
  price.addEventListener("input", function(){
    const inputValue = price.value;
    const charge = document.getElementById("add-tax-price")
    charge.innerHTML = Math.floor(inputValue * 0.1)
    const profit = document.getElementById("profit")
    profit.innerHTML = inputValue - Math.floor(inputValue * 0.1)
  })
});