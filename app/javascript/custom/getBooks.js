import "axios";

const target = document.querySelector(".sub-but");

const createCard = (book) => {
  const cardHTML = `<div class="card column is-3 m-3 is-flex is-flex-direction-column">
  <div class="card-content">
    <div>
      <div class="is-flex is-justify-content-space-between">
        <h3 class="title is-5">${book["title"]}</h3>
        <div class="is-flex is-wrap-no-wrap">
          <button class="button is-danger mr-1 submit-btn"><span class="icon p-0"><%= image_tag "icons/heart-plus.png" %></span></button>
          <button class="button"><span class="icon p-0"><%= image_tag "icons/book-plus-outline.png" %></span></button>
        </div>
      </div>
      <span class="icon-text">
        <span class="icon"><%= image_tag "icons/feather.png" %></span>
        <span>${book["first_publish_year"]}</span>
      </span>
      <br>
      <span class="icon-text mb-4">
        <span class="icon"><%= image_tag "icons/account.png" %></span>
        <span>${book["author_name"][0]}</span>
      </span>
      <br>
      <p class="mb-2 has-text-weight-semibold" style="border-bottom: 2px solid hsl(141, 53%, 53%)">First sentence</p>
      <p class="mb-4">${book["first_sentence"][0]}</p>
    </div>
  </div>
    </div>
`;

  return cardHTML;
};

const populateBooks = (givenData) => {
  //Access array of books
  const books = givenData.data.docs;
  const bookArea = document.querySelector(".bookArea");
  //Add each book to page
  books.forEach((book) => {
    bookArea.innerHTML += createCard(book);
  });
};

const apiGet = async (searchTerm) => {
  const res = await axios.get(
    `http://openlibrary.org/search.json?title=${searchTerm}`
  );
  return res;
};

target.addEventListener("click", async (event) => {
  event.preventDefault();
  const form = new FormData(document.querySelector(".target-form"));
  const search = form.get("search");
  const servedData = await apiGet(search);
  populateBooks(servedData);
});
