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

function previewPoster(event) {
  const previewWrapperEl = document.querySelector(".preview-wrapper");
  if (previewWrapperEl) previewWrapperEl.style.visibility = "visible";
  document.getElementById("poster-preview").src = URL.createObjectURL(
    event.files[0],
  );
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
