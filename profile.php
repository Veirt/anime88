<?php require("session_start.php") ?>
<?php require("utils.php") ?>

<!-- TODO: bagusin lagi -->
<!DOCTYPE html>
<html lang="en">

<?php $title = "Anime88 - Profile" ?>
<?php include("includes/head.php") ?>

<body>
    <?php include("includes/navbar.php") ?>

    <main>
        <section class="welcome-user">
            <h1>Username</h1>
        </section>
        <section class="list-card">
            <h1 class="list-title">All Rated Anime</h1>
            <div class="total-rated">
                <p>Total Anime Rated : </p>
                <p>Mean Score : </p>
            </div>
            <table class="table-list">
                <thead>
                    <tr class="table-header">
                        <th class="table-number">#</th>
                        <th class="table-image">Anime Poster</th>
                        <th class="-table-title">Anime Title</th>
                        <th class="table-score">My Score</th>
                    </tr>
                </thead>
                <tbody>
                    <tr class="list-data">
                        <td class="table-number">1</td>
                        <td class="table-image"><img src="assets\poster\vinland-saga.png" alt=""></td>
                        <td class="table-title">Vinland Saga</td>
                        <td class="table-score">10</td>
                    </tr>
                </tbody>
            </table>
        </section>
    </main>
</body>

</html>
