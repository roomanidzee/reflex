<#include "base.ftl">
<#macro title>Re:Flex | Statistics</#macro>

<#macro content>
<#if isSameDay??>
    <input value="${isSameDay?c}" id="isSameDay" hidden />
</#if>
    <style type="text/css">
        @import url(http://fonts.googleapis.com/css?family=Open+Sans:300,400);


        ul.countdown {
            list-style: none;
            display: block;
            text-align: right;
            color: #484848;
            font: normal 8px 'Open Sans', sans-serif;

        }
        ul.countdown li {
            display: inline-block;
        }

        ul.countdown li span {
            font-size: 40px;
            font-weight: 300;
            line-height: 80px;
        }
        ul.countdown li.seperator {
            font-size: 40px;
            line-height: 70px;
            vertical-align: top;
        }
        ul.countdown li p {
            color: #a7abb1;
            font-size: 12px;
            margin: 0;
        }
        ul.countdown p {
            color: #a7abb1;
            font-size: 20px;
            margin: 0;
        }


        .smile-container {
            display: flex;
            flex-direction: row;
            justify-content: space-between;
        }

        .smile{
            width: 40px;
            height: 40px;
        }
        .feature-color{
            color: rgba(73,187,15,0.77);
        }

        .teext{
            display: block;
            margin-left: auto;
            margin-right: auto;
        }


    </style>

<div class = "modal fade" id = "instructionModal" tabindex="-1" role="dialog" aria-labelledby="instructionModalLabel" aria-hidden="true">

    <div class="modal-dialog" role="document">

        <div class="modal-content">

            <div class="modal-header text-center">
                <h5 class="modal-title" id="instructionModalLabel">Welcome!</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>

            <div class="modal-body">

                <p class="teext"><i class="far fa-check-circle"></i>
                    Sit comfortably and straighten your back, look right into your Webcam and press
                    <b class="feature-color">Set position</b></p>
                <p class="teext"><i class="far fa-check-circle"></i>Turn on
                    <b class="feature-color">Posture Tracking</b> switch if you want to be notified about sitting wrong</p>
                <p class="teext"><i class="far fa-check-circle"></i>Turn on
                    <b class="feature-color">Smart Pomodoro</b> switch if you want to be reminded to have a rest every 25 minutes</p>

            </div>

            <div class="modal-footer text-center">
                Sincerely, your Re:Flex team
            </div>

        </div>

    </div>

</div>

<!-- Modal morning -->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Good morning, ${currentUser.name}</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <h6>Rate your current mood</h6>
                <div class="slidecontainer">
                    <div class="smile-container">
                        <img src = "/png/very_angry.png" class="smile"/>
                        <img src = "/png/angry.png" class="smile"/>
                        <img src = "/png/neutral.png" class="smile"/>
                        <img src = "/png/good.png" class="smile"/>
                        <img src = "/png/very_good.png" class="smile"/>
                    </div>
                    <br/>
                    <input type="range" min="1" max="5" value="5" class="slider" id="mood">
                </div>
                <h6>Rate your current tiredness</h6>
                <div class="slidecontainer">
                    <div class="smile-container">
                        <img src = "/png/very_angry.png" class="smile"/>
                        <img src = "/png/angry.png" class="smile"/>
                        <img src = "/png/neutral.png" class="smile"/>
                        <img src = "/png/good.png" class="smile"/>
                        <img src = "/png/very_good.png" class="smile"/>
                    </div>
                    <br/>
                    <input type="range" min="1" max="5" value="5" class="slider" id="tiredness">
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-outline-dark" id="save" data-dismiss="modal">Save</button>
            </div>
        </div>
    </div>
</div>


<!-- Modal evening -->
<div class="modal fade" id="exampleModal2" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Good evening, ${currentUser.name}</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <h6>Rate your current mood</h6>
                <div class="slidecontainer">
                    <div class="smile-container">
                        <img class="smile" src = "/png/very_angry.png" class="smile"/>
                        <img class="smile" src = "/png/angry.png" class="smile"/>
                        <img class="smile" src = "/png/neutral.png" class="smile"/>
                        <img class="smile" src = "/png/good.png" class="smile"/>
                        <img class="smile" src = "/png/very_good.png" class="smile"/>
                    </div>
                    <br/>
                    <input type="range" min="1" max="5" value="5" class="slider" id="moodEv">
                </div>
                <h6>Rate your current tiredness</h6>
                <div class="slidecontainer">
                    <div class="smile-container">
                        <img class="smile" src = "/png/very_angry.png" class="smile"/>
                        <img class="smile" src = "/png/angry.png" class="smile"/>
                        <img class="smile" src = "/png/neutral.png" class="smile"/>
                        <img class="smile" src = "/png/good.png" class="smile"/>
                        <img class="smile" src = "/png/very_good.png" class="smile"/>
                    </div>
                    <br/>
                    <input type="range" min="1" max="5" value="5" class="slider" id="tirednessEv">
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-outline-dark" id="logout" data-dismiss="modal">Save changes</button>
            </div>
        </div>
    </div>
</div>



<div class="container">
    <div class="row">
        <div class="col">
            <a class="btn btn-outline-secondary active text-center" href="#instructionModal" data-toggle="modal" style="margin-top: 35px; display: inline-grid">Show
                instruction</a>
        </div>
        <div class="col">
    <ul class="countdown">
        <li>
            <span class="minutes">00</span>
        <li class="seperator">:</li>
        <li>
            <span class="seconds">00</span>
        </li>
        <p>time left</p>
    </ul>
        </div>
    </div>

<!--<div style="width:75%;">-->

    <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-4 border-bottom">
        <h1 class="h2" id="headText">Mood statistics</h1>
        <div class="btn-toolbar mb-2 mb-md-0">


            <div class="btn-group btn-group-toggle" data-toggle="buttons">
                <label class="btn btn-outline-secondary active">
                    <input type="radio" name="chartData" value="Mood" autocomplete="on" checked> Mood
                </label>
                <label class="btn btn-outline-secondary">
                    <input type="radio" name="chartData" value="Tiredness" autocomplete="on"> Tiredness
                </label>
                <label class="btn btn-outline-secondary">
                    <input type="radio" name="chartData" value="Posture" autocomplete="on"> Posture
                </label>
            </div>

            <div class="btn-group btn-group-toggle" data-toggle="buttons" style="margin-left:10px;">
                <label class="btn btn-outline-secondary active">
                    <span data-feather="calendar"></span>
                    <input type="radio" name="chartTime" value="Week" autocomplete="on" checked> Week
                </label>
                <label class="btn btn-outline-secondary">
                    <input type="radio" name="chartTime" value="Month" autocomplete="on"> Month
                </label>


            <#if currentUser.role == "ADMIN">
            <#if company??>
                <select class="form-control" id="departmentsSelect" style="margin-left:10px;">
                    <#list company.departments as department>
                        <option value="${department.id}">${department.name} department</option>
                    </#list>
                </select>
            </#if>
            </#if>
                <!--
                <label class="btn btn-outline-secondary">
                    <input type="radio" name="chartTime" value="Year" autocomplete="on"> Year
                </label>
                -->
            </div>
            <!--

            <button class="btn btn-sm btn-outline-secondary dropdown-toggle">
                <span data-feather="calendar"></span>
                This week
            </button>
                    -->
        </div>
    </div>


    <canvas id="statsChart"></canvas>

</div>


<div style="visibility: hidden">
    <canvas id="canvas" width="640" height="480" ></canvas>
    <video id="video" width="640" height="480" autoplay ></video>
</div>
<!--</div>-->
</#macro>


<#macro scripts>
<script>

    // var MONTHS = ['January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December'];

    // Chart configuration
    var config = {
        type: 'line',
        data: {
            datasets: [{
                label: 'Morning data',
                backgroundColor: window.chartColors.red,
                borderColor: window.chartColors.red,
                fill: false
            }, {
                label: 'Evening data',
                backgroundColor: window.chartColors.blue,
                borderColor: window.chartColors.blue,
                fill: false
            }]
        },
        options: {
            responsive: true,
            title: {
                display: false
            },
            tooltips: {
                mode: 'index',
                intersect: false
            },
            hover: {
                mode: 'nearest',
                intersect: true
            },
            scales: {
                xAxes: [{
                    display: true,
                    scaleLabel: {
                        display: true,
                        labelString: 'Day'
                    },
                    type: 'time',
                    time: {
                        unit: 'day'
                    },
                    ticks:{
                        source: 'auto'
                    }
                }],
                yAxes: [{
                    display: true,
                    scaleLabel: {
                        display: true,
                        labelString: 'Value'
                    },
                    ticks: {
                        max: 5,
                        min: 0
                    }
                }]
            }
        }
    };

    var dataset1 = [{
        label: 'Morning data',
        backgroundColor: window.chartColors.green_t,
        borderColor: window.chartColors.green,
        fill: true
    }, {
        label: 'Evening data',
        backgroundColor: window.chartColors.purple_t,
        borderColor: window.chartColors.purple,
        fill: true
    }];

    var dataset2 = [{
        label: 'Posture data',
        backgroundColor: window.chartColors.green_t,
        borderColor: window.chartColors.green,
    }];

    var ctx = document.getElementById('statsChart').getContext('2d');
    var statsChart = new Chart(ctx, config);
    var url = $(location).attr('pathname') + "_ajax";
    console.log(url);
    Chart.defaults.global.defaultFontSize = 14;

    function ajax_submit() {

        var chart_request = {
            "dataType": $('input[name=chartData]:checked').val(),
            "timeType": $('input[name=chartTime]:checked').val()
        };

        <#if company??>
            chart_request["departmentId"] =  $('#departmentsSelect').val();
        </#if>

        console.log(chart_request);

        $.ajax({
            async: false,
            type: "POST",
            contentType: "application/json",
            url: url,
            dataType: 'json',
            data: JSON.stringify(chart_request),
            cache: false,
            timeout: 600000,
            success: function (data) {
                console.log("SUCCESS : ", data);

                //var labels = [];

                //for (var i = 0; i < data.points.length; i++) {
                //    labels.push(data.points[i].x)
                //}

               // statsChart.data.labels = labels;
                $("#headText").text(chart_request["dataType"] + " statistics");


                if (chart_request["timeType"] === "Year") {
                    config.options.scales.xAxes[0].time.unit = 'month';
                    config.options.scales.xAxes[0].scaleLabel.labelString = 'Month';
                }
                else {
                    config.options.scales.xAxes[0].time.unit = 'day';
                    config.options.scales.xAxes[0].scaleLabel.labelString = 'Day';
                }

                if (chart_request["dataType"] === 'Posture'){
                    config.data.datasets = dataset2;
                    config.data.datasets[0].data = data.pointData;
                    config.options.scales.yAxes[0].ticks.max = 50;
                    statsChart.update();
                }
                else {
                    config.data.datasets = dataset1;
                    config.data.datasets[0].data = data.morningData;
                    config.data.datasets[1].data = data.eveningData;
                    config.options.scales.yAxes[0].ticks.max = 5;
                }

                statsChart.update();

            },
            error: function (e) {
                console.log("ERROR : ", e);
            }
        });
    };



    var isUpdateProccessStarted = false;
    var shouldFlexBeChecked = false;
    var shouldTirednessBeChecked = false;

    // Grab elements, create settings, etc.
    var video = document.getElementById('video');

    // Get access to the camera!
    if(navigator.mediaDevices && navigator.mediaDevices.getUserMedia) {
        // Not adding `{ audio: true }` since we only want video now
        navigator.mediaDevices.getUserMedia({ video: true }).then(function(stream) {


          try {
            video.srcObject = stream;
          } catch (error) {
            video.src = window.URL.createObjectURL(stream);
          }

            video.play();
        });
    }
    // Elements for taking the snapshot
    var canvas = document.getElementById('canvas');
    var context = canvas.getContext('2d');
    var myImage;

    function convertCanvasToImage(canvas) {
        var jpegUrl0 = canvas.toDataURL("image/jpeg");
        var jpegUrl = jpegUrl0.replace(/^data:image\/(png|jpeg);base64,/, "");
        return jpegUrl;
    }

    function updateSome() {
        var myFormData = new FormData();
        context.drawImage(video, 0, 0, 640, 480);
        jpegURL = convertCanvasToImage(canvas);
        var myBlob = base64ToBlob(jpegURL, 'image/jpeg');

        myFormData.append('myImage', myBlob);

        update(myFormData);
    };

    // This function is used to convert base64 encoding to mime type (blob)
    function base64ToBlob(base64, mime)
    {
        mime = mime || '';
        var sliceSize = 1024;
        var byteChars = window.atob(base64);
        var byteArrays = [];

        for (var offset = 0, len = byteChars.length; offset < len; offset += sliceSize) {
            var slice = byteChars.slice(offset, offset + sliceSize);

            var byteNumbers = new Array(slice.length);
            for (var i = 0; i < slice.length; i++) {
                byteNumbers[i] = slice.charCodeAt(i);
            }

            var byteArray = new Uint8Array(byteNumbers);

            byteArrays.push(byteArray);
        }

        return new Blob(byteArrays, {type: mime});
    }

    function initialize(myFormData) {
        $.ajax({
            url: "/initialize_fp",
            type: "POST",
            data: myFormData,
            // enctype: 'multipart/form-data',
            processData: false,
            contentType: false,
            cache: false,
            success: function () {
                isUpdateProccessStarted = true;
                //ВКЛЮЧИТЬ ЕГО
                console.log("File uploaded for initialization")

                // Handle upload success
//                    alert("File succesfully uploaded");
            },
            error: function () {
              isUpdateProccessStarted = false;
              // Handle upload error
                alert("Face not detected");
            }
        });
    } // function uploadFile

    function update(myFormData) {
        $.ajax({
            url: "/update_fp",
            type: "POST",
            data: myFormData,
            // enctype: 'multipart/form-data',
            processData: false,
            contentType: false,
            cache: false,
            success: function (data) {
                console.log(data);
                // Handle upload success
//                    alert("File succesfully uploaded");
            },
            error: function () {
                // Handle upload error
                // alert("File not uploaded ");
            }
        });
    }

    var q = true;

    var closeNot = function() {
        q = true;
    };

    var options = {
        title: "Re:Flex",
        options: {
            body: "Straighten your back!",
            icon: "img/reflex-logo.jpg",
            lang: 'en-US',
            onClose: closeNot,
        }
    };

    var checkForFlex = function(){
        $.ajax({
            url: "/check_flex",
            type: "GET",
            // enctype: 'multipart/form-data',
            processData: false,
            contentType: false,
            cache: false,
            success: function (data) {
                if(data && q){
                    q = false;
                    $("#easyNotify").easyNotify(options);
                }
                console.log(data);
            },
            error: function (data) {
                // Handle upload error}
            }
        });
    };


    var cycledFun = function() {
        if (isUpdateProccessStarted) {
            var myFormData = new FormData();
            context.drawImage(video, 0, 0, 640, 480);
            jpegURL = convertCanvasToImage(canvas);
            var myBlob = base64ToBlob(jpegURL, 'image/jpeg');
            myFormData.append('myImage', myBlob);
            if(shouldFlexBeChecked || shouldTirednessBeChecked) {
              update(myFormData);
            }

             if (shouldFlexBeChecked) {
                checkForFlex();
             }

             if(shouldTirednessBeChecked){
//                 checkForTiredness()
             }
        }
    };


    $(document).ready(function() {

        ajax_submit();

        $('input[name=chartData]').change(function () {
            ajax_submit();
        });

        $('input[name=chartTime]').change(function () {
            ajax_submit();
        });

        $('#departmentsSelect').change(function() {
            console.log($(this).val());
            ajax_submit();
        });

        $('#posture_track_switch').change(function() {

            if (shouldFlexBeChecked) {
                shouldFlexBeChecked = false;
            } else {
                shouldFlexBeChecked = true;
                isUpdateProccessStarted = true;

            }
            console.log('posture_track_switch ' + $(this).prop('checked'));

        });




        $('#init_button').on('click', function(event) {
            var myFormData = new FormData();
            context.drawImage(video, 0, 0, 640, 480);
            jpegURL = convertCanvasToImage(canvas);
            var myBlob = base64ToBlob(jpegURL, 'image/jpeg');

            myFormData.append('myImage', myBlob);

            initialize(myFormData);
            console.log('Init button');
        });


        var timerId = setInterval(cycledFun, 1000 * 3);

        $('#eyes_rest_switch').change(function () {

            if(this.checked){

                var today = new Date();

                var day = today.getDay();
                var month = today.getMonth() + 1;
                var year = today.getFullYear();

                var hour = today.getHours();
                var minutes = today.getMinutes() + 25;
                var seconds = today.getSeconds();

                if( minutes > 60){
                    minutes = minutes - 60;
                    hour += 1;
                }

                if(minutes < 10){
                    minutes = '0' + minutes;
                }

                console.log("DAY: " + day);

                var result_string = day + '/' + month +  '/' + year + ' ' + hour + ':' + minutes + ':' + seconds;
                console.log("RESULT: " + result_string);

                $('.countdown').downCount({
                    date: result_string,
                    offset: +11
                }, function () {
                    alert('Время отдохнуть!');
                });

                (function ($) {

                    $.fn.downCount = function (options, callback) {
                        var settings = $.extend({
                            date: result_string,
                            offset: +1
                        }, options);

                        // Save container
                        var container = this;

                        /**
                         * Main downCount function that calculates everything
                         */
                        function countdown () {
                            var target_date = new Date(settings.date), // set target date
                                current_date = currentDate(); // get fixed current date

                            // difference of dates
                            var difference = target_date - current_date;
                            console.log("DIFFERENCE: " + difference);

                            // if difference is negative than it's pass the target date
                            if (difference < 0) {
                                // stop timer
                                clearInterval(interval);

                                if (callback && typeof callback === 'function') callback();

                                return;
                            }

                            // basic math variables
                            var _second = 1000,
                                _minute = _second * 60,
                                _hour = _minute * 60,
                                _day = _hour * 24;

                            // calculate dates
                            var minutes = Math.floor((difference % _hour) / _minute),
                                seconds = Math.floor((difference % _minute) / _second);

                            // fix dates so that it will show two digets
                            minutes = (String(minutes).length >= 2) ? minutes : '0' + minutes;
                            seconds = (String(seconds).length >= 2) ? seconds : '0' + seconds;

                            // based on the date change the refrence wording
                            var ref_days = (days === 1) ? 'day' : 'days',
                                ref_hours = (hours === 1) ? 'hour' : 'hours',
                                ref_minutes = (minutes === 1) ? 'minute' : 'minutes',
                                ref_seconds = (seconds === 1) ? 'second' : 'seconds';

                            // set to DOM
                            container.find('.minutes').text(minutes);
                            container.find('.seconds').text(seconds);

                            container.find('.minutes_ref').text(ref_minutes);
                            container.find('.seconds_ref').text(ref_seconds);
                        };

                        // start
                        var interval = setInterval(countdown, 1000);
                    };

                })(jQuery);

            }

        });

    });

</script>


<script>
    var isSameDay = document.getElementById("isSameDay").value;
    console.log(isSameDay);
    if (isSameDay === "false") {
        $('#exampleModal').modal('show');
    }

    var mood = document.getElementById("mood");
    var tiredness = document.getElementById("tiredness");
    document.getElementById("save").addEventListener("click", function () {
        saveValues(mood.value, tiredness.value);
    });
    var moodEv = document.getElementById("moodEv");
    var tirednessEv = document.getElementById("tirednessEv");
    document.getElementById("logout").addEventListener("click", function () {
        saveValuesEv(moodEv.value, tirednessEv.value);
    });


    function saveValues(mood, tiredness) {
        $.ajax({
            url: "/sliderValue",
            type: "POST",
            data: {mood:mood, tiredness:tiredness}
        });
    }

    function saveValuesEv(moodEv, tirednessEv) {
        $.ajax({
            url: "/sliderValueEv",
            type: "POST",
            data: {moodEv:moodEv, tirednessEv:tirednessEv},
            success:
                    function (response) {
                        window.location.href = '/login';
                    }

        });
    }

</script>

</#macro>