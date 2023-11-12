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
            <section>
                <div class="list-card">
                    <div class="list-title">
                        <h1>All Rated Anime</h1>
                    </div>
                    <div class="total-rated">
                        <p>Total Anime Rated : </p>
                        <p>Mean Score : </p>
                    </div>
                        <tbody>
                            <tr class="table-header">
                                <th class="table-list number">#</th>
                                <th class="table-list image">Anime Poster</th>
                                <th class="table-list title">Anime Title</th>
                                <th class="table-list score">My Score</th>
                            </tr>
                        </tbody>
                        <tbody>
                            <tr class="list-data"></tr>
                                <td class="list-data number"></td>
                                <td class="list-data image"></td>
                                <td class="list-data title"></td>
                                <td class="list-data score"></td>
                        </tbody>

                </div>
            </section>
        </main>
    </body>
</html>