<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><?= $title ?></title>
    <link rel="stylesheet" type="text/css" href="assets/style.css">

    <script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
    <script defer async src="assets/js/script.js"></script>

    <style>
        .no-fouc {
            display: none;
        }
    </style>

    <script type="text/javascript">
        document.documentElement.className = 'no-fouc';
        $(window).on("load", function() {
            $('.no-fouc').removeClass('no-fouc');
        });
    </script>

</head>
