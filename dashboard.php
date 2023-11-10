<?php require("utils.php") ?>
<?php user_authorization("admin") ?>

<?php
function get_user_count()
{
    require('connection.php');

    $query = "SELECT COUNT(*) AS user_count FROM users";
    $stmt = $connection->prepare($query);
    $stmt->execute();
    $result = $stmt->get_result();
    $stmt->close();


    return $result->fetch_assoc()["user_count"];
}

function get_anime_count()
{
    require('connection.php');

    $query = "SELECT COUNT(*) AS anime_count FROM anime";
    $stmt = $connection->prepare($query);
    $stmt->execute();
    $result = $stmt->get_result();
    $stmt->close();


    return $result->fetch_assoc()["anime_count"];
}

function get_review_count()
{
    require('connection.php');

    $query = "SELECT COUNT(*) AS review_count FROM reviews";
    $stmt = $connection->prepare($query);
    $stmt->execute();
    $result = $stmt->get_result();
    $stmt->close();


    return $result->fetch_assoc()["review_count"];
}

?>


<!DOCTYPE html>
<html lang="en">

<?php $title = "Anime88 - Dashboard" ?>
<?php include("includes/head.php") ?>

<body>
    <?php $sidebar_active = "dashboard" ?>
    <?php include("includes/sidebar.php") ?>

    <main class="dashboard">
        <div style="width: 100%;">
            <?php include("includes/navbar.php") ?>
        </div>

        <div class="dashboard-item-wrapper">
            <div class="dashboard-item">
                <svg class="dashboard-item-icon" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24">
                    <g>
                        <path d="M17.438,21.937H6.562c-1.378,0-2.5-1.122-2.5-2.5v-0.827c0-3.969,3.561-7.198,7.938-7.198
                    s7.938,3.229,7.938,7.198v0.827C19.938,20.815,18.817,21.937,17.438,21.937z M12,12.412c-3.826,0-6.938,2.78-6.938,6.198v0.827
                    c0,0.827,0.673,1.5,1.5,1.5h10.877c0.827,0,1.5-0.673,1.5-1.5v-0.827C18.938,15.192,15.826,12.412,12,12.412z" />
                        <path d="M12,9.911c-2.164,0-3.923-1.76-3.923-3.924S9.836,2.063,12,2.063s3.923,1.76,3.923,3.923
                    S14.164,9.911,12,9.911z M12,3.063c-1.612,0-2.923,1.312-2.923,2.923c0,1.612,1.312,2.924,2.923,2.924s2.923-1.312,2.923-2.924
                    C14.923,4.375,13.612,3.063,12,3.063z" />
                    </g>
                </svg>
                <div class="dashboard-item-info">
                    <h3>Total Users</h3>
                    <h3 class="dashboard-item-value"><?= get_user_count() ?></h3>
                </div>
            </div>

            <div class="dashboard-item">
                <svg class="dashboard-item-icon" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24">
                    <g>
                        <path d="M18.437,20.937H5.563c-1.379,0-2.5-1.122-2.5-2.5V5.563c0-1.378,1.121-2.5,2.5-2.5h12.873
                    c1.379,0,2.5,1.122,2.5,2.5v12.874C20.937,19.815,19.815,20.937,18.437,20.937z M5.563,4.063c-0.827,0-1.5,0.673-1.5,1.5v12.874
                    c0,0.827,0.673,1.5,1.5,1.5h12.873c0.827,0,1.5-0.673,1.5-1.5V5.563c0-0.827-0.673-1.5-1.5-1.5H5.563z" />
                        <path d="M12.5,14.545c0,0.645-1,0.643-1,0v-8l0,0c0-0.645,1-0.643,1,0V14.545z" />
                        <path d="M16.717,12.454c0,0.645-1,0.643-1,0V6.545l0,0c0-0.645,1-0.643,1,0V12.454z" />
                        <path d="M8.28,6.545c0-0.643-1-0.645-1,0l0,0v4c0,0.643,1,0.645,1,0V6.545z" />
                    </g>
                </svg>

                <div class="dashboard-item-info">
                    <h3>Total Anime</h3>
                    <h3 class="dashboard-item-value"><?= get_anime_count() ?></h3>
                </div>
            </div>

            <div class="dashboard-item">
                <svg class="dashboard-item-icon" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24">
                    <path d="M17.601,21.938c-0.366,0-0.725-0.137-1.01-0.4l-4.251-3.904c-0.191-0.177-0.488-0.176-0.68-0.001
                l-4.251,3.905c-0.444,0.41-1.063,0.515-1.618,0.271c-0.554-0.243-0.898-0.769-0.898-1.374V4.562c0-1.378,1.121-2.5,2.5-2.5h9.215
                c1.379,0,2.5,1.122,2.5,2.5v15.872c0,0.605-0.345,1.131-0.898,1.374C18.011,21.895,17.805,21.938,17.601,21.938z M11.999,16.502
                c0.366,0,0.732,0.132,1.018,0.396l4.251,3.904c0.225,0.206,0.471,0.121,0.54,0.09c0.07-0.031,0.3-0.155,0.3-0.458V4.562
                c0-0.827-0.673-1.5-1.5-1.5H7.393c-0.827,0-1.5,0.673-1.5,1.5v15.872c0,0.303,0.229,0.427,0.3,0.458
                c0.069,0.031,0.316,0.116,0.54-0.09l4.251-3.905C11.268,16.634,11.634,16.502,11.999,16.502z" />
                </svg>


                <div class="dashboard-item-info">
                    <h3>Total Reviews</h3>
                    <h3 class="dashboard-item-value"><?= get_review_count() ?></h3>
                </div>
            </div>

        </div>

    </main>

</body>

</html>
