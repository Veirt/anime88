const quoteElement = document.querySelector(".quote-content");

if (quoteElement) {
  fetch("api/quote.php")
    .then((response) => response.json())
    .then((quote) => {
      quoteElement.innerHTML = quote.quote;
      document.querySelector(
        ".quote-author",
      ).innerHTML = `${quote.character} - ${quote.anime}`;
    });
}

const currentTheme = localStorage.getItem("theme");
if (currentTheme) {
  document.documentElement.setAttribute("data-theme", currentTheme);
} else {
  document.documentElement.setAttribute("data-theme", "dark");
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

const changeThemeButton = document.getElementById("change-theme");
if (changeThemeButton)
  changeThemeButton.addEventListener("click", function () {
    if (this.src.endsWith("light.svg")) {
      this.src = "assets/icons/dark.svg";
    } else {
      this.src = "assets/icons/light.svg";
    }

    switchTheme();
  });

function previewPoster(event) {
  const previewWrapperEl = document.querySelector(".preview-wrapper");
  if (previewWrapperEl) previewWrapperEl.style.visibility = "visible";
  document.getElementById("poster-preview").src = URL.createObjectURL(
    event.files[0],
  );
}

const userActionButton = document.querySelector(".user-action-button");
const userActionDropdown = document.querySelector(".user-action-dropdown");
if (userActionButton && userActionDropdown) {
  userActionButton.addEventListener("click", () => {
    userActionDropdown.classList.toggle("show");
  });

  window.onclick = function (event) {
    if (
      !event.target.matches(".user-action-button") &&
      event.target.parentNode !== userActionButton
    ) {
      if (userActionDropdown.classList.contains("show")) {
        userActionDropdown.classList.remove("show");
      }
    }
  };
}
