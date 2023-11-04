fetch("https://animechan.xyz/api/random", {
  mode: "cors",
})
  .then((response) => response.json())
  .then((quote) => {
    const quoteElement = document.querySelector(".quote-content");
    if (quoteElement) {
      quoteElement.innerHTML = quote.quote;
      document.querySelector(
        ".quote-author",
      ).innerHTML = `${quote.character} - ${quote.anime}`;
    }
  });

if (localStorage.getItem("theme") === "dark") {
  document.documentElement.setAttribute("data-theme", "dark");
}

document.getElementById("toggle-dark").addEventListener("click", () => {
  if (document.documentElement.getAttribute("data-theme")) {
    document.documentElement.removeAttribute("data-theme");
    localStorage.setItem("theme", "light");
  } else {
    document.documentElement.setAttribute("data-theme", "dark");
    localStorage.setItem("theme", "dark");
  }
});
