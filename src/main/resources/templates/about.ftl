<!DOCTYPE html>
<html lang="en">
<head>
    <title>About Covivax</title>
    <script src="https://kit.fontawesome.com/079fc88579.js" crossorigin="anonymous"></script>
</head>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
    /* The side navigation menu */
    p.padding {
        padding-left: 2cm;
        padding-right: 2cm;
    }

    .sidebar {
        margin: 0;
        padding: 0;
        width: 50px;
        background-color: #f1f1f1;
        position: fixed;
        height: 100%;
        overflow: auto;
    }

    /* Sidebar links */
    .sidebar a {
        display: block;
        color: black;
        padding: 16px;
        text-decoration: none;
    }

    /* Active/current link */
    .sidebar a.active {
        background-color: #32a852;
        color: white;
    }

    /* Links on mouse-over */
    .sidebar a:hover:not(.active) {
        background-color: #555;
        color: white;
    }

    /* Page content. The value of the margin-left property should match the value of the sidebar's width property */
    div.content {
        margin-left: 50px;
        padding: 1px 16px;
        height: 1000px;
    }

    /* On screens that are less than 700px wide, make the sidebar into a topbar */
    @media screen and (max-width: 700px) {
        .sidebar {
            width: 100%;
            height: auto;
            position: relative;
        }

        .sidebar a {
            float: left;
        }

        div.content {
            margin-left: 0;
        }
    }

    /* On screens that are less than 400px, display the bar vertically, instead of horizontally */
    @media screen and (max-width: 400px) {
        .sidebar a {
            text-align: center;
            float: none;
        }
    }
</style>
<body style="text-align: center; font-family: 'Helvetica Neue',sans-serif">
<!-- The sidebar from W3C -->
<div class="sidebar">
    <a class="active" href="/"><i class="fa fa-home"></i></a>
    <a href="/about"><i class="fas fa-info-circle"></i></a>
    <a href="/aboutvaxx"><i class="fas fa-syringe"></i></a>
    <a href="/aboutpassport"><i class="fas fa-passport"></i></a>
    <a href="/sources"><i class="fas fa-book"></i></a>
    <a href="https://github.com/briantruan/covivax"><i class="fab fa-github"></i></a>
</div>
<img src="/static/covivax-logo.png" width="150" height="150">
<hr>
<h2>About Covivax</h2>
<p class="padding" style="text-align: left">Covivax is an <b>open-source, proof-of-concept</b> application developed for
    the
    University of Michigan Honors 240: Wellness
    final project. Developed with Kotlin, Ktor, and Freemarker, the application is designed for families to report
    vaccinations for household members. Because it is a proof-of-concept, data is not stored in a database and is
    intended for short-term use only. (Data is stored on memory.) While a database can be configured, my coding is not
    advanced enough to add authentication features which would protect this data, unlike other passports. While I had
    already known Kotlin in the past, I had to learn Ktor and Freemarker to make this web application, which took far
    longer than I expected. Overall, I am very happy with the results, especially considering that this was my first
    ever “website.”</p>
<p class="padding" style="text-align: left">Because this website is publicly accessible, please do not upload sensitive vaccination information to the app. Try a
    fake name or date of birth. </p>
<br>
</body>
</html>