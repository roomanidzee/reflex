<!DOCTYPE html>
<html lang="en">
<head>
    <link href="https://gitcdn.github.io/bootstrap-toggle/2.2.2/css/bootstrap-toggle.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css" integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay" crossorigin="anonymous">
    <script type="text/javascript" src="js/Chart.bundle.js"></script>
    <script type="text/javascript" src="js/chart_util.js"></script>
    <script type="text/javascript" src="js/jquery.js"></script>
    <script type="text/javascript" src="js/jquery.downCount.js"></script>

    <link href="/css/custom.css" rel="stylesheet">
    <meta charset="UTF-8">

    <title><@title/></title>
    <style>
        .slider {
            -webkit-appearance: none;
            width: 100%;
            height: 15px;
            border-radius: 5px;
            background: #d3d3d3;
            outline: none;
            opacity: 0.7;
            -webkit-transition: .2s;
            transition: opacity .2s;
        }

        .slider::-webkit-slider-thumb {
            -webkit-appearance: none;
            appearance: none;
            width: 25px;
            height: 25px;
            border-radius: 50%;
            background: #4CAF50;
            cursor: pointer;
        }

        .slider::-moz-range-thumb {
            width: 25px;
            height: 25px;
            border-radius: 50%;
            background: #4CAF50;
            cursor: pointer;
        }
    </style>
</head>
<body>

<div class="navbar navbar-light d-flex flex-column flex-md-row p-3 px-md-4 mb-3 bg-white border-bottom shadow-sm">
    <h5 class="my-0 mr-md-auto font-weight-normal">Re:Flex</h5>
    <nav class="my-2 my-md-0 mr-md-3">
        <#if currentUser??>
            <#if currentUser.role == "USER">
        <button id="init_button" type="button" class="btn btn-outline-dark btn-sm" style="margin-right: 16px;">Set position</button>

        <input id="posture_track_switch" type="checkbox" data-toggle="toggle" data-onstyle="success" data-offstyle="danger" data-size="small" data-on="Posture tracking on" data-off="Posture tracking off" style="margin-left: 6px;">
        <input id="eyes_rest_switch" type="checkbox" data-toggle="toggle" data-onstyle="success" data-offstyle="danger" data-size="small" data-on="Smart pomodoro on" data-off="Smart pomodoro off" >
            </#if>
        <button class="p-2 text-dark btn btn-link"  type="button" data-toggle="modal" data-target="#exampleModal2" style="margin-left: 16px;">Logout</button>
        <#else>
        <a class="p-2 text-dark" href="/signUp"  style="margin-left: 16px;">SignUp</a>
        <a class="p-2 text-dark" href="/login">Login</a>
        </#if>

    </nav>
</div>

<@content/>


<footer class="footer pt-4 my-md-5 pt-md-5 border-top"">
    <div class="container">
        <span class="text-muted">Re:Flex Team © 2019</span>
    </div>
</footer>

<!-- Icons -->
<script  type="text/javascript" src="js/easyNotify.js"></script>
<script src="https://unpkg.com/feather-icons/dist/feather.min.js"></script>

<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
<script src="https://gitcdn.github.io/bootstrap-toggle/2.2.2/js/bootstrap-toggle.min.js"></script>

<script>
    feather.replace()
</script>

<#if scripts??>
    <@scripts/>
</#if>

</body>
</html>