function start() {
  console.log("WE are linked");

  const submitBtn = document.getElementsByClassName("submit-btn");

  submitBtn.forEach((btn) => {
    btn.addEventListener("click", (event) => {
      event.preventDefault();
      console.log("hello!");
    });
  });
}

export default { start };
