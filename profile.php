<?php require("session_start.php") ?>
<?php require("utils.php") ?>
<?php user_authorization("user") ?>

<!DOCTYPE html>
<html lang="en">

<?php $title = "Anime88 - Profile" ?>
<?php include("includes/head.php") ?>
<?php

$user_id = $_SESSION['user']['id'];

$user_info = getUserInfo($user_id);
$user_anime_rating = getUserAnimeRating($user_id);
?>

<body>
    <?php include("includes/navbar.php") ?>

    <main>
        <section class="profile-main">
            <div class="profile-user">
                <svg class="profile-pic" version="1.1" id="Layer_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="796 796 200 200" enable-background="new 796 796 200 200" xml:space="preserve">
                    <path d="M896,796c-55.14,0-99.999,44.86-99.999,100c0,55.141,44.859,100,99.999,100c55.141,0,99.999-44.859,99.999-100
                    C995.999,840.86,951.141,796,896,796z M896.639,827.425c20.538,0,37.189,19.66,37.189,43.921c0,24.257-16.651,43.924-37.189,43.924
                    s-37.187-19.667-37.187-43.924C859.452,847.085,876.101,827.425,896.639,827.425z M896,983.86
                    c-24.692,0-47.038-10.239-63.016-26.695c-2.266-2.335-2.984-5.775-1.84-8.82c5.47-14.556,15.718-26.762,28.817-34.761
                    c2.828-1.728,6.449-1.393,8.91,0.828c7.706,6.958,17.316,11.114,27.767,11.114c10.249,0,19.69-4.001,27.318-10.719
                    c2.488-2.191,6.128-2.479,8.932-0.711c12.697,8.004,22.618,20.005,27.967,34.253c1.144,3.047,0.425,6.482-1.842,8.817
                    C943.037,973.621,920.691,983.86,896,983.86z" />
                </svg>
                <h1><?php echo $user_info['username']; ?></h1>
                <div class="total-rated">
                    <p>Total Anime Rated : <?= count($user_anime_rating); ?></p>
                    <p>Mean Score : <?= calculateMeanScore($user_anime_rating); ?></p>
                </div>
            </div>

            <div class="rated-container">
                <?php foreach ($user_anime_rating as $idx => $rating) : ?>
                    <div class="rated-card">
                        <div class="rated-poster">
                            <a href="view.php?id=<?= $rating['id'] ?>"><img src="assets\poster\<?= $rating['poster'] ?>" alt=""></a>
                        </div>
                        <div class="rated-content">
                            <div class="rated-number">#<?= $idx + 1 ?> </div>
                            <div class="rated-title">
                                <a href="view.php?id=<?= $rating['id'] ?>"><?= $rating['anime_title'] ?></a>
                            </div>
                            <div class="rated-rate"><?= $rating['rating'] ?></div>
                        </div>
                    </div>
                <?php endforeach; ?>
            </div>
        </section>
    </main>
</body>

</html>
