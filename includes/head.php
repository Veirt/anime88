<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><?= $title ?></title>
    <link rel="stylesheet" type="text/css" href="assets/style.css">
    <link rel="apple-touch-icon" sizes="180x180" href="assets/apple-touch-icon.png">
    <link rel="icon" type="image/png" sizes="32x32" href="assets/favicon-32x32.png">
    <link rel="icon" type="image/png" sizes="16x16" href="assets/favicon-16x16.png">
    <link rel="manifest" href="assets/site.webmanifest">

    <script defer>
        const currentTheme = localStorage.getItem("theme");
        if (currentTheme) {
            document.documentElement.setAttribute("data-theme", currentTheme);
        } else {
            document.documentElement.setAttribute("data-theme", "dark");
        }

        function switchTheme() {
            if (document.documentElement.getAttribute("data-theme") === "dark") {
                document.documentElement.setAttribute("data-theme", "light");
                localStorage.setItem("theme", "light");
            } else {
                document.documentElement.setAttribute("data-theme", "dark");
                localStorage.setItem("theme", "dark");
            }
        }
    </script>
    <script defer src="assets/js/script.js"></script>

</head>
