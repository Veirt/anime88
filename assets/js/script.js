fetch("https://animechan.xyz/api/random", {
  mode: "cors",
})
  .then(response => response.json())
  .then(quote => {
    const quoteElement = document.querySelector(".quote-content");
    if (quoteElement) {
      quoteElement.innerHTML = quote.quote;
      document.querySelector(".quote-author").innerHTML = `${quote.character} - ${quote.anime}`;
    }
  });
