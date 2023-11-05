const quoteElement = document.querySelector(".quote-content");

if (quoteElement) {
  fetch("https://animechan.xyz/api/random", {
    mode: "cors",
  })
    .then(response => response.json())
    .then(quote => {
      quoteElement.innerHTML = quote.quote;
      document.querySelector(".quote-author").innerHTML = `${quote.character} - ${quote.anime}`;
    });
}

const currentTheme = localStorage.getItem("theme");
if (currentTheme) {
  document.documentElement.setAttribute("data-theme", currentTheme);
}

function switchTheme() {
  if (document.documentElement.getAttribute("data-theme") === "dark") {
    document.documentElement.setAttribute("data-theme", "light");
    localStorage.setItem("theme", "light");
  } else {
    document.documentElement.setAttribute("data-theme", "dark");
    localStorage.setItem("theme", "dark");
  }
}

document.getElementById("toggle-dark").addEventListener("click", switchTheme);

function previewPoster(event) {
  const previewWrapperEl = document.querySelector(".preview-wrapper");
  if (previewWrapperEl) previewWrapperEl.style.visibility = "visible";
  document.getElementById("poster-preview").src = URL.createObjectURL(event.files[0]);
}
