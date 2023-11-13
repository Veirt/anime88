async function fetchAnime() {
  const animeName = document.getElementById("anime-name").value;
  const params = new URLSearchParams({ name: animeName });
  const response = await fetch("api/anime.php?" + params);

  return response.text();
}

async function getSearchResult() {
  const animeList = await fetchAnime();

  document.querySelector(".anime-list").innerHTML = animeList;
}
