/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

var Booking = {
    init: function () {
        $('.menu-item').removeClass('active');
        $('.menu #booking').addClass('active');
    },
    board: {
        /**
         * Display list of bookings in dashboard.
         * @param {String} id Id of component to show.
         * @param {Int} page current page in paginate
         * @param {Int} num_objs number of booking in page.
         */
        dashboard: function (id, page, num_objs) {
            $.ajax({
                type: 'POST',
                url: "../admin/booking",
                data: {
                    page: page,
                    num_objs: num_objs
                },
                success: function (response) { // Kieu String
                    var table_name = 'Booking List';
                    var header = ['Mentor Name', 'Course', 'Mentee Name', 'Booking Time', 'Status', 'Amount']
                    var colgroup = [100, 60, 90, 70, 50, 70]
                    var data = JSON.parse(response)
                    var table = AP.table.render(table_name, header, data, function (index) {
                        var booking = JSON.parse(data[index])
                        var mentor = JSON.parse(booking['mentor'])
                        var mentee = JSON.parse(booking['mentee'])
                        var x_img = mentor['pfp'];
                        var y_img = mentee['pfp'];
                        if (x_img == null) {
                            x_img = 'default.jpg';
                        }
                        if (y_img == null) {
                            y_img = 'default.jpg';
                        }
                        return `<div class="table-row">
                        <div class="table-data" style="width:${colgroup[0]}px">${index}</div>
                        <div class="table-data" style="width:${colgroup[1]}px">${index}</div>
                        <div class="table-data" style="width:${colgroup[2]}px">${index}</div>
                        <div class="table-data" style="width:${colgroup[3]}px">${index}</div>
                        <div class="table-data" style="width:${colgroup[4]}px">${index}</div>
                        <div class="table-data" style="width:${colgroup[5]}px">${index}</div>
                    </div>`;
                    }, colgroup);
                    $("#page #" + id).html(table);
                },
                error: function (xhr) {

                }
            });
        }
    },
    display: {

    },
    form: {

    }
};
