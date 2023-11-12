<?php require("utils.php") ?>

<!DOCTYPE html>
<html lang="en">

<?php $title = "Anime88 - Anime List" ?>
<?php include("includes/head.php") ?>

<body>
    <?php include("includes/navbar.php") ?>
    <main>

        <section class="search-filter">
            <input onchange="getSearchResult()" placeholder="Search for anime..." type="text" name="name" id="anime-name" class="form-input search-bar">
        </section>

        <!-- TODO: bagusin lagi layoutnya -->
        <section class="anime-list">
            <?php
            require("connection.php");
            $query = "SELECT * FROM anime ORDER BY name ASC";
            $result = mysqli_execute_query($connection, $query);

            while ($row = mysqli_fetch_assoc($result)) { ?>
                <?php $url = "view.php?id=" . $row['id']; ?>

                <div class="anime anime-smaller">
                    <a href="<?= $url ?>">
                        <img class="anime-poster anime-poster-smaller" src="assets/poster/<?= $row['poster'] ?>" alt="">
                    </a>
                    <a href="<?= $url ?>">
                        <h2 class="anime-title"><?= $row['name'] ?></h2>
                    </a>
                    <p class="anime-airing"><?= $row['season'] ?> <?= $row['year'] ?> · <?= $row['status'] ?></p>
                    <div class="genre-info-wrapper">
                        <?php foreach (get_genre($row['id']) as $genre) : ?>
                            <div class="genre-chip genre-chip-smaller"><?= $genre ?></div>
                        <?php endforeach ?>
                    </div>
                </div>

            <?php } ?>
        </section>
    </main>

</body>

</html>
