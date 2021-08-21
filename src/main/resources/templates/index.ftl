<#-- @ftlvariable name="individuals" type="kotlin.collections.List<edu.umich.briantr.VaccineEntry>" -->
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Covivax</title>
    <script src="https://kit.fontawesome.com/079fc88579.js" crossorigin="anonymous"></script>
</head>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
    /* The side navigation menu */
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
        .sidebar a {float: left;}
        div.content {margin-left: 0;}
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
    <a href="https://github.com/briantruan/covivax"><i class="fab fa-github"></i></a>
</div>
<img src="/static/covivax-logo.png" width="150" height="150">
<p><i>Built using Kotlin, Ktor, and Freemarker for Honors 240: Wellness</i></p>
<p><b>NOTE: </b>Proof-of-concept only. Do not use for official purposes.</p>
<hr>
<#list individuals as individual>
    <div>
        <div id="container" style="white-space:nowrap">
            <div id="image" style="display:inline;">
                <#if individual.isFullyVaccinated()>
                    <img src="/static/png-16/stethoscope-16x16-29733.png" title="Fully vaccinated">
                <#else>
                    <img src="/static/png-16/bandage-16x16-29738.png" title="Not fully vaccinated">
                </#if>
            </div>
            <div id="texts" style="display:inline; white-space:nowrap;">
                <b>${individual.lastName}, ${individual.firstName} ${individual.middleName}</b>
            </div>
        </div>
        <p>UUID: ${individual.uuid}</p>
        <p>Date of Birth: ${individual.dateOfBirth}</p>
        <h4>First Dose</h4>
        <p>${(individual.firstDose.vaccineName)!"N/A"} on ${(individual.firstDoseDate)!"N/A"}</p>
        <h4>Second Dose</h4>
        <p>${(individual.secondDose.vaccineName)!"N/A"} on ${(individual.secondDoseDate)!"N/A"}</p>
        <h4>Booster</h4>
        <p>${(individual.boosterDose.vaccineName)!"N/A"} on ${(individual.boosterDoseDate)!"N/A"}</p>
        <hr>
    </div>
</#list>
<form action="/submit" method="post">
    <div class="rendered-form">
        <div class="">
            <h2 access="false" id="control-4005200">Record a Vaccination</h2></div>
        <p><i>Enter dates in YYYY-MM-DD format or else the website will crash.</i></p>
        <div class="formbuilder-text form-group field-text-1629481497184">
            <label for="text-1629481497184" class="formbuilder-text-label">Last Name<span
                        class="formbuilder-required">*</span></label>
            <input type="text" class="form-control" name="text-1629481497184" access="false" id="text-1629481497184"
                   required="required" aria-required="true">
        </div>
        <div class="formbuilder-text form-group field-text-1629481498601">
            <label for="text-1629481498601" class="formbuilder-text-label">First Name<span class="formbuilder-required">*</span></label>
            <input type="text" class="form-control" name="text-1629481498601" access="false" id="text-1629481498601"
                   required="required" aria-required="true">
        </div>
        <div class="formbuilder-text form-group field-text-1629481499909">
            <label for="text-1629481499909" class="formbuilder-text-label">Middle Name</label>
            <input type="text" class="form-control" name="text-1629481499909" access="false" id="text-1629481499909">
        </div>
        <div class="formbuilder-date form-group field-date-1629481560269">
            <label for="date-1629481560269" class="formbuilder-date-label">Date of Birth<span
                        class="formbuilder-required">*</span></label>
            <input type="date" class="form-control" name="date-1629481560269" access="false" id="date-1629481560269"
                   required="required" aria-required="true">
        </div>
        <div class="">
            <h3 access="false" id="control-2646336">First Dose</h3></div>
        <div class="formbuilder-select form-group field-select-1629481777037">
            <label for="select-1629481777037" class="formbuilder-select-label">Vaccine Brand<span
                        class="tooltip-element"
                        tooltip="Choose the vaccine brand from your vaccination card. If not listed, select other."></span></label>
            <select class="form-control" name="select-1629481777037" id="select-1629481777037">
                <option disabled selected value> -- select an option -- </option>
                <option value="pfizer" id="select-1629481777037-0">Pfizer-BioNTech/Comirnaty</option>
                <option value="moderna" id="select-1629481777037-1">Moderna</option>
                <option value="janssen" id="select-1629481777037-2">Johnson&amp;Johnson/Janssen</option>
                <option value="astrazeneca" id="select-1629481777037-3">AstraZeneca/Oxford</option>
                <option value="sputnik" id="select-1629481777037-4">Sputnik V</option>
                <option value="sinopharm" id="select-1629481777037-5">Sinopharm</option>
                <option value="sinovac" id="select-1629481777037-6">Sinovac</option>
                <option value="other" id="select-1629481777037-7">Other</option>
            </select>
        </div>
        <div class="formbuilder-date form-group field-date-1629481690854">
            <label for="date-1629481690854" class="formbuilder-date-label">Dose Date</label>
            <input type="date" class="form-control" name="date-1629481690854" access="false" id="date-1629481690854">
        </div>
        <div class="">
            <h3 access="false" id="control-978800">Second Dose</h3></div>
        <div class="formbuilder-select form-group field-select-1629481890616">
            <label for="select-1629481890616" class="formbuilder-select-label">Vaccine Brand<span
                        class="tooltip-element"
                        tooltip="Choose the vaccine brand from your vaccination card. If not listed, select other."></span></label>
            <select class="form-control" name="select-1629481890616" id="select-1629481890616">
                <option disabled selected value> -- select an option -- </option>
                <option value="pfizer" id="select-1629481890616-0">Pfizer-BioNTech/Comirnaty</option>
                <option value="moderna" id="select-1629481890616-1">Moderna</option>
                <option value="janssen" id="select-1629481890616-2">Johnson&amp;Johnson/Janssen</option>
                <option value="astrazeneca" id="select-1629481890616-3">AstraZeneca/Oxford</option>
                <option value="sputnik" id="select-1629481890616-4">Sputnik V</option>
                <option value="sinopharm" id="select-1629481890616-5">Sinopharm</option>
                <option value="sinovac" id="select-1629481890616-6">Sinovac</option>
                <option value="other" id="select-1629481890616-7">Other</option>
            </select>
        </div>
        <div class="formbuilder-date form-group field-date-1629481763542">
            <label for="date-1629481763542" class="formbuilder-date-label">Dose Date</label>
            <input type="date" class="form-control" name="date-1629481763542" access="false" id="date-1629481763542">
        </div>
        <div class="">
            <h3 access="false" id="control-1117209">Booster</h3></div>
        <div class="formbuilder-select form-group field-select-1629481890107">
            <label for="select-1629481890107" class="formbuilder-select-label">Vaccine Brand<span
                        class="tooltip-element"
                        tooltip="Choose the vaccine brand from your vaccination card. If not listed, select other."></span></label>
            <select class="form-control" name="select-1629481890107" id="select-1629481890107">
                <option disabled selected value> -- select an option -- </option>
                <option value="pfizer" id="select-1629481890107-0">Pfizer-BioNTech/Comirnaty</option>
                <option value="moderna" id="select-1629481890107-1">Moderna</option>
                <option value="janssen" id="select-1629481890107-2">Johnson&amp;Johnson/Janssen</option>
                <option value="astrazeneca" id="select-1629481890107-3">AstraZeneca/Oxford</option>
                <option value="sputnik" id="select-1629481890107-4">Sputnik V</option>
                <option value="sinopharm" id="select-1629481890107-5">Sinopharm</option>
                <option value="sinovac" id="select-1629481890107-6">Sinovac</option>
                <option value="other" id="select-1629481890107-7">Other</option>
            </select>
        </div>
        <div class="formbuilder-date form-group field-date-1629481766205">
            <label for="date-1629481766205" class="formbuilder-date-label">Dose Date</label>
            <input type="date" class="form-control" name="date-1629481766205" access="false" id="date-1629481766205">
        </div>
    </div>
    <br>
    <input type="submit">
</form>
</body>
</html>
