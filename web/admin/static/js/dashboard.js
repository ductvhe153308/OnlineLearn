/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

var Dashboard = new function __Dashboard(){

/**
 * Master layout for dashboard.
 */
this.init = function () {
$('#page').html(`
            <div class="row">
                <div class="col col-4">
                    <div class="row">
                        <div class="col-12 component" id="profile"></div>
                    </div>
                    <div class="row">
                        <div class="col-12 component">
                            <div class="component-header">Invoice Analytics</div>
                            <canvas id="invoice"></canvas>
                        </div>
                    </div>
                </div>
                <div class="col col-8">
                    <div class="row">
                        <div class="col-4 component" id="members">
                            <div class="row">
                                <div class="col-3 circle bg-blue">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="28" height="28" fill="#009da6" class="bi bi-person-fill" viewBox="0 0 16 16"><path d="M3 14s-1 0-1-1 1-4 6-4 6 3 6 4-1 1-1 1H3zm5-6a3 3 0 1 0 0-6 3 3 0 0 0 0 6z"/></svg>
                                </div>
                                <div class="col-3 big-num">
                                    166
                                </div>
                            </div>
                            <div class="row text-mute">
                                Members
                            </div>
                            <div class="row">
                                <div class="progress">
                                    <div class="progress-filler bg-st-blue" style="width : 54%"></div>
                                </div>
                            </div>
                        </div>
                        <div class="col-4 component" id="appointments">
                            <div class="row">
                                <div class="col-3 circle bg-green">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="28" height="28" fill="#3dd598" class="bi bi-credit-card-fill" viewBox="0 0 16 16"><path d="M0 4a2 2 0 0 1 2-2h12a2 2 0 0 1 2 2v1H0V4zm0 3v5a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V7H0zm3 2h1a1 1 0 0 1 1 1v1a1 1 0 0 1-1 1H3a1 1 0 0 1-1-1v-1a1 1 0 0 1 1-1z"/></svg>
                                </div>
                                <div class="col-3 big-num">
                                    321
                                </div>
                            </div>
                            <div class="row text-mute">
                                Appointments
                            </div>
                            <div class="row">
                                <div class="progress">
                                    <div class="progress-filler bg-st-green" style="width : 34%"></div>
                                </div>
                            </div>
                        </div>
                        <div class="col-4 component" id="mentoringpoints">
                            <div class="row">
                                <div class="col-3 circle bg-orange">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="28" height="28" fill="#f39c12" class="bi bi-star-fill" viewBox="0 0 16 16"><path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/></svg>                                </div>
                                <div class="col-3 big-num">
                                    224
                                </div>
                            </div>
                            <div class="row text-mute">
                                Mentoring Points
                            </div>
                            <div class="row">
                                <div class="progress">
                                    <div class="progress-filler bg-st-orange" style="width : 64%"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12 component">
                            <div class="component-header">Sales Analytics</div>
                            <canvas id="sale"></canvas>
                        </div>  
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-6 component" id="mentor">
                </div>
                <div class="col-6 component" id="mentee">
                </div>
            </div>
            <div class="row">
                <div class="col-12 component" id="booking">
                </div>
            </div>`);
        this.profile();
        this.sale();
        Mentor.board.dashboard('mentor', 1, 5);
        Mentee.board.dashboard('mentee', 1, 5);
        this.invoice();
        this.booking();
};
        /**
         * Admin profile
         */
        this.profile = function () {
        var profile = $("#profile");
                profile.html(`
                <div class="row profile-header">
                    <div class="col-7">
                        <h5>Welcome Back !</h5>
                        <h6>Mentoring Panel</h6>
                    </div>
                    <div class="col-5">
                        <img class="profile-img" src="/onlinelearn/assets/img/profile-img.png"/>
                    </div>
                </div>
                <div class="row">
                    <div class="col-4">
                        <div class="row" id="admin-ava">
                            <img src="/onlinelearn/assets/img/user/user7.jpg"/>
                        </div>
                        <div class="row profile-value text-truncate" id="admin-name">Sofia Brient</div>
                        <div class="row profile-item">Administrator</div>                    
                    </div>
                    <div class="col-4">
                        <div class="row profile-value" id="admin-meeting">12</div>
                        <div class="row profile-item">Meetings</div>
                        <div class="row btn" id="btn-view-prf">View Profile</div>
                    </div>
                    <div class="col-4">
                        <div class="row profile-value" id="admin-revenue">$1245</div>
                        <div class="row profile-item">Revenue</div>
                    </div>
                </div>
            `);
                $.ajax({type: 'POST',
                        url: '../ajax/admin/profile',
                        data: {
                        },
                        dataType: 'json',
                        success: function (response) {
                            var admin = response;
                            $('#admin-ava img').attr('src', `/onlinelearn/assets/img/user/${admin.pfp}`);
                            $("#admin-name").html(admin.last_name + " " + admin.first_name);
                        },
                        error: function (XHR) {

                        }
                }); 
        };
        /**
         * Invoice Chart 
         */
        this.invoice = function () {
        $.ajax({
        type: 'post',
                url: '../ajax/admin/invoice',
                data:{

                },
                success: function (response) {
                var config = {
                type: 'doughnut',
                        data:  {
                        labels: [
                                'Invoiced',
                                'Received',
                                'Pending'
                        ],
                                datasets: [
                                {
                                label: 'My First Dataset',
                                        data: JSON.parse(response),
                                        backgroundColor: [
                                                'rgb(255, 99, 132)',
                                                'rgb(54, 162, 235)',
                                                'rgb(255, 205, 86)'
                                        ],
                                        hoverOffset: 3
                                }]
                        }
                };
                        var myChart = new Chart($('#invoice'), config);
                },
                error: function (jqXHR, textStatus, errorThrown) {
                }
        });
        };
        /**
         * Sale Chart
         */
        this.sale = function () {
        $.ajax({
        type: 'post',
                url: '../ajax/admin/sale',
                data:{

                },
                success: function (response) {
                console.log(response)
                        var data = JSON.parse(response);
                        console.log(data)
                        var labels = JSON.parse(data.labels);
                        var rec = JSON.parse(data.receiveds);
                        var pen = JSON.parse(data.pendings);
                        var config = {
                        type: 'bar',
                                data:  {
                                labels: labels,
                                        datasets: [
                                        {
                                        label: 'Received',
                                                data: rec,
                                                backgroundColor: [
                                                        'rgb(0, 157, 166)'
                                                ],
                                                borderWidth: 0,
                                                borderRadius: 50,
                                                hoverOffset: 3
                                        }, {
                                        label: 'Pending',
                                                data: pen,
                                                backgroundColor: [
                                                        'rgb(255, 156, 39)'
                                                ],
                                                borderWidth: 0,
                                                borderRadius: 50,
                                                hoverOffset: 3
                                        }]
                                },
                                options: {
                                scales: {
                                y: {
                                beginAtZero: true
                                }
                                }
                                }
                        };
                        var myChart = new Chart($('#sale'), config);
                },
                error: function (jqXHR, textStatus, errorThrown) {
                }
        });
        };
        /**
         * Booking List
         */
        this.booking = function () {
        var table_name = 'Booking List';
                var header = ['Mentor Name', 'Course', 'Mentee Name', 'Booking Time', 'Status', 'Amount'];
                var colgroup = [100, 60, 90, 70, 50, 70];
                var data = [1, 2, 3, 4, 5];
                var table = AP.table.render(table_name, header, data, function (index) {
                return `<div class="table-row">
                        <div class="table-data" style="width:${colgroup[0]}px">${index}</div>
                        <div class="table-data" style="width:${colgroup[1]}px">${index}</div>
                        <div class="table-data" style="width:${colgroup[2]}px">${index}</div>
                        <div class="table-data" style="width:${colgroup[3]}px">${index}</div>
                        <div class="table-data" style="width:${colgroup[4]}px">${index}</div>
                        <div class="table-data" style="width:${colgroup[5]}px">${index}</div>
                    </div>`;
                }, colgroup);
                $("#page #booking").html(table);
        };
};
