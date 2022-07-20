/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

var Dashboard = new function __Dashboard() {

    /**
     * Master layout for dashboard.
     */
    this.init = function () {
        this.profile()
        this.sale()
        this.invoice()
        Mentor.board.dashboard('mentor', 1, 5)
        Mentee.board.dashboard('mentee', 1, 5)
        Course.board.dashboard('course', 1, 5)
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
                            <img src="/onlinelearn/assets/img/user/user40.jpg"/>
                        </div>
                        <div class="row profile-value text-truncate" id="admin-name">Sofia Brient</div>
                        <div class="row profile-item">Administrator</div>                    
                    </div>
                    <div class="col-4">
                        <div class="row profile-value" id="admin-meeting">12</div>
                        <div class="row profile-item">Meetings</div>
                        <div class="row btn url" id="btn-view-prf" data-url="onlinelearn/UserProfile?id=40">View Profile</div>
                    </div>
                    <div class="col-4">
                        <div class="row profile-value" id="admin-revenue">$1245</div>
                        <div class="row profile-item">Revenue</div>
                    </div>
                </div>
            `)
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
        })
    };

    /**
     * Invoice Chart 
     */
    this.invoice = function () {
        $.ajax({
            type: 'post',
            url: '../ajax/admin/invoice',
            data: {

            },
            success: function (response) {
                var config = {
                    type: 'doughnut',
                    data: {
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
                }
                var myChart = new Chart($('#invoice'), config)
            },
            error: function (jqXHR, textStatus, errorThrown) {
            }
        })
    };
    /**
     * Sale Chart
     */
    this.sale = function () {
        $.ajax({
            type: 'post',
            url: '../ajax/admin/sale',
            data: {

            },
            success: function (response) {
                console.log(response)
                var data = JSON.parse(response)
                console.log(data)
                var labels = JSON.parse(data.labels)
                var rec = JSON.parse(data.receiveds)
                var pen = JSON.parse(data.pendings)
                var config = {
                    type: 'bar',
                    data: {
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
                var myChart = new Chart($('#sale'), config)
            },
            error: function (jqXHR, textStatus, errorThrown) {
            }
        })
    };
}
