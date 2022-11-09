// import { Axios } from "axios";

// export default class BookGet {
//   constructor() {
//     this.target = document.querySelector(".sub-but");
//     console.log("bonjour");

//     this.target.addEventListener("click", (event) => {
//       event.preventDefault;
//       console.log("AAARCH");
//       const form = new FormData(document.querySelector(".target-form"));
//       const search = form.get("search");
//       console.log(search);
//     });
//   }
// }

const target = document.querySelector(".sub-but");
console.log("bonjour");

target.addEventListener("click", (event) => {
  event.preventDefault();
  console.log("AAARCH");
  const form = new FormData(document.querySelector(".target-form"));
  const search = form.get("search");
  console.log(search);
});
