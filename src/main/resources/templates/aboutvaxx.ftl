<!DOCTYPE html>
<html lang="en">
<head>
    <title>About the COVID-19 Vaccination</title>
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
<h2>About the COVID-19 Vaccination</h2>
<p class="padding" style="text-align: center"><i>Internet access is required for vaccination data to appear. This
        process can take up to 10 seconds.</i></p>
<br>
<h4 style="text-align: center"><b>Worldwide Vaccinations</b></h4>
<br>
<iframe src="https://ourworldindata.org/explorers/coronavirus-data-explorer?zoomToSelection=true&facet=none&pickerSort=asc&pickerMetric=location&Metric=People+vaccinated+%28by+dose%29&Interval=7-day+rolling+average&Relative+to+Population=true&Align+outbreaks=false&country=SGP~QAT~URY~DNK~CHL~PRT~ESP~CAN~BEL~IRL~CHN~IND~USA~IDN~PAK~BRA~NGA~BGD~RUS~MEX~JPN~ETH~PHL~EGY~VNM~TUR~IRN~DEU~THA~GBR~FRA~ITA~TZA~ZAF~MMR~OWID_WRL&hideControls=true"
        loading="lazy" style="width: 80%; height: 800px; border: 0 none;"></iframe>
<br>
<h4 style="text-align: center;"><b>University of Michigan Vaccinations</b></h4>
<br>
<script type='text/javascript' src='https://tableau.dsc.umich.edu/javascripts/api/viz_v1.js'></script>
<div class='tableauPlaceholder' style='width: 80%; height: 1077px; margin: auto'>
    <object class='tableauViz' width='1024' height='1077' style='display:none;'>
        <param name='host_url' value='https%3A%2F%2Ftableau.dsc.umich.edu%2F'/>
        <param name='embed_code_version' value='3'/>
        <param name='site_root' value='&#47;t&#47;UM-Public'/>
        <param name='name' value='U-MCovid19StudentVaccine&#47;PUBLICThermometer'/>
        <param name='tabs' value='no'/>
        <param name='toolbar' value='yes'/>
        <param name='showAppBanner' value='false'/>
        <param name='display_spinner' value='yes'/>
    </object>
</div>
<br>
</body>
</html>