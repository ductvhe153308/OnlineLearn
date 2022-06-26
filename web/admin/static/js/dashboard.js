/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

var Dashboard = {

/**
 * Master layout for dashboard.
 */
init: function () {
$('#page').html(`
            <div class="row">
                <div class="col col-4">
                    <div class="row">
                        <div class="col-12 component" id="profile"></div>
                    </div>
                    <div class="row">
                        <div class="col-12 component" id="invoice"></div>
                    </div>
                </div>
                <div class="col col-8">
                    <div class="row">
                        <div class="col-4 component"></div>
                        <div class="col-4 component"></div>
                        <div class="col-4 component"></div>
                    </div>
                    <div class="row">
                        <div class="col-12 component" id="sale"></div>  
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
        this.invoice();
        this.sale();
        Mentor.board.dashboard('mentor',1,5);
        Mentee.board.dashboard('mentee',1,5);
        this.booking();
},
        /**
         * Admin profile
         */
        profile: function () {
        $("#profile").css("height", "290px");
                $.ajax({type: 'POST', url: '',
                        data: {

                        },
                        dataType: 'json',
                        success: function (response) {

                        },
                        error: function (jqXHR, textStatus, errorThrown) {

                        }
                });
        },
        /**
         * Invoice Chart 
         */
        invoice: function () {
        $("#invoice").css("height", "440px");
        },
        /**
         * Sale Chart
         */
        sale: function () {
        $("#sale").css("height", "550px");
        },
        /**
         * Booking List
         */
        booking: function () {
        var table_name = 'Booking List';
                var header = ['Mentor Name', 'Course', 'Mentee Name', 'Booking Time', 'Status', 'Amount'];
                var colgroup = [100, 60, 90, 70, 50, 70];
                var data = [1, 2, 3, 4, 5];
                var table = AP.tableRender(table_name, header, data, function (index) {
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
        }
};