const pay = () => {
  Payjp.setPublicKey("pk_test_25a56c28a6a36d499432144e");
  const form = document.getElementById('charge-form');
  form.addEventListener("submit", (e) => {
    e.preventDefault();

    const formResult = document.getElementById("charge-form");
    const formData = new FormData(formResult);

    const card = {
      number: formData.get("order_address[number]"),
      cvc: formData.get("order_address[cvc]"),
      exp_month: formData.get("order_address[exp-month]"),
      exp_year: `20${formData.get("order_address[exp-year]")}`,
    };

    Payjp.createToken(card, (status, response) => {
      if (status == 200) {
        const token = response.id;
        const renderDom = document.getElementById("charge-form");
        const tokenObj = `<input value=${token} name='token' type="hidden">`;
        renderDom.insertAdjacentHTML("beforeend", tokenObj);
      }

      document.getElementById("card-number").removeAttribute("number");
      document.getElementById("card-cvc").removeAttribute("cvc");
      document.getElementById("card-exp-month").removeAttribute("exp-month");
      document.getElementById("card-exp-year").removeAttribute("exp-year");

      document.getElementById("charge-form").submit();
    });
  });
};

window.addEventListener("load", pay);