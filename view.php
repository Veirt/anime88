<!DOCTYPE html>
<html lang="en">

<?php $title = "Anime88 - View - Anime" ?>
<?php include("includes/head.php") ?>

    <body>
        <?php include("includes/navbar.php") ?>

        <main>
            <section class="preview-anime">
                <div class="poster-anime">
                    <img src="assets/poster/100kanojo.jpg" alt="#"> 
                </div>

                <div class="anime-content">
                    <div class="anime-desc">
                        <h1> Kimi no Koto ga Daidaidaidaidaisuki na 100-nin no Kanojo </h1>
                        <p> 
                            Upon graduating middle school, Rentarou Aijou manages to confess to the girl he loves. Unfortunately, he gets rejected, making it his 100th rejection in a row. Having experienced heartbreak after heartbreak, he goes to a matchmaking shrine and prays with the hope of finally getting a girlfriend in high school. Suddenly, the god of the shrine appears, promising Rentarou that he will meet one hundred soulmates in high school.
                        </p>
                        <p>
                            Although skeptical at first, Rentarou quickly acknowledges the truth behind the god's words when two of his soulmates—Hakari Hanazono and Karane Inda—confess to him the very same day that they meet him. However, there was one detail that the god forgot to tell Rentarou: if any of his soulmates fails to get into a relationship with him, they will die. Now trapped in a matter of life and death, Rentarou decides to date all of his soulmates.
                        </p>
                        <p>
                            With a heart so big that it can be shared among one hundred girlfriends, Rentarou makes the most out of his unanticipated high school life, with the Rentarou family growing ever larger!
                        </p>
                    </div>
                    <div class="anime-stat">
                        <div class="anime-rank">
                            <h3>Score</h3>
                            <h1>7.25</h1>
                            <div>
                                <p>X users</p>
                            </div>
                        </div>
                        <div>
                            <select class="rating-option" name="rating" id="rate">
                                <option selected="selected" value="0">Select</option>
                                <option value="10">(10)</option>
                                <option value="9">(9)</option>
                                <option value="8">(8)</option>
                                <option value="7">(7)</option>
                                <option value="6">(6)</option>
                                <option value="5">(5)</option>
                                <option value="4">(4)</option>
                                <option value="3">(3)</option>
                                <option value="2">(2)</option>
                                <option value="1">(1)</option>
                            </select>
                        </div>
                    </div>
                </div>
            </section>

            <section class="anime-info">
                
                <div class="more-info">
                        <div class="genre-anime">
                            <h3>Genre : </h3>
                        </div>

                        <div class="info-row">
                            <h3>Episodes :</h3>
                            <p>Episode Number</p>
                        </div>

                        <div class="info-row">
                            <h3>Status :</h3>
                            <p>Anime Status</p>
                        </div>

                        <div class="info-row">
                            <h3>Season :</h3>
                            <p>Anime Season</p>
                        </div>

                        <div class="info-row">
                            <h3>Year Released :</h3>
                            <p>Year Anime Released</p>
                        </div>

                        <div class="info-row">
                            <h3>Studio : </h3>
                            <p>Anime Studio</p>
                        </div>
                    </div>
            </section>

        </main>

    </body>


</html>