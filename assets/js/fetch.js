async function fetchAnime() {
  // Ambil parameter dari URL
  let currentParams = new URL(document.location).searchParams;
  const animeName = document.getElementById("anime-name").value;

  // prefer dari input
  currentParams.set("name", animeName);

  const apiUrl = "api/anime.php" + "?" + currentParams.toString();

  const response = await fetch(apiUrl);
  return response.text();
}

async function getSearchResult() {
  const animeList = await fetchAnime();

  document.querySelector(".anime-list").innerHTML = animeList;
}
