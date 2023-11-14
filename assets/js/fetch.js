async function fetchAnime() {
  // Ambil parameter dari URL
  let currentParams = new URL(document.location).searchParams;
  const animeName = document.getElementById("anime-name").value;
  const season = document.getElementById("season").value;
  const year = document.getElementById("year").value;

  // prefer dari input
  currentParams.set("name", animeName);
  currentParams.set("season", season);
  currentParams.set("year", year);

  const apiUrl = "api/anime.php" + "?" + currentParams.toString();

  const response = await fetch(apiUrl);
  return response.text();
}

async function getSearchResult() {
  const animeList = await fetchAnime();

  document.querySelector(".anime-list").innerHTML = animeList;
}
