/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

var Course = {
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
                url: "../admin/course",
                data: {
                    page: page,
                    num_objs: num_objs
                },
                success: function (response) { // Kieu String
                    var table_name = 'Course List';
                    var header = ['Mentor Name', 'Course', 'Mentee Name', 'Booking Time', 'Amount']
                    var colgroup = [100, 60, 90, 70, 70]
                    var data = JSON.parse(response)
                    var table = AP.table.render(table_name, header, data, function (index) {
                        var booking = JSON.parse(data[index])
                        var mentor = JSON.parse(booking['mentor'])
                        var course = JSON.parse(booking['course'])
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
                        <div class="table-data" style="width:${colgroup[0]}px">
                            <img class="mini-user-ava" src="/onlinelearn/assets/img/user/${x_img}"/>
                            <div class="user-name">${mentor['first_name']} ${mentor['last_name']}</div>
                        </div>
                        <div class="table-data" style="width:${colgroup[1]}px">
                            <div>${course['title']}</div>
                        </div>
                        <div class="table-data" style="width:${colgroup[2]}px">
                            <img class="mini-user-ava" src="/onlinelearn/assets/img/user/${img}" alt="ava"/>
                            <div class="user-name">${mentee['first_name']} ${mentee['last_name']}</div>
                        </div>
                        <div class="table-data" style="width:${colgroup[3]}px">${booking.time}</div>
                        <div class="table-data" style="width:${colgroup[4]}px">
                            ${AP.money.dollar(course['price'] * course['total_register_number'])}
                        </div>
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
