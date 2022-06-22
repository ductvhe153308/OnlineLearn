/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

var Mentor = {
    init: function () {
        $('.menu-item').removeClass('active');
        $('.menu #mentor').addClass('active');
        Mentor.board.full('mentor', 1, 10);
    },
    /**
     * Display list of mentor.
     * @param {Int} page current page in paginate
     * @param {Int} num_objs number of mentor in page.
     * @returns {undefined}
     */
    board: {
        dashboard: function (id, page, num_objs) {
            $.ajax({
                type: 'POST',
                url: "../admin/mentor",
                data: {
                    page: page,
                    num_objs: num_objs
                },
                success: function (response) {
                    var table_name = 'Mentor List';
                    var header = ['Mentor Name', 'Course', 'Earned', 'Reviews'];
                    var colgroup = [150, 90, 50, 130];
                    var data = JSON.parse(response);
                    var table = AP.tableRender(table_name, header, data, function (index) {
                        var mentor = JSON.parse(data[index]['account']);
                        var course = JSON.parse(data[index]['course']);
                        var img = mentor['pfp'];
                        if (img == null) {
                            img = 'default.jpg';
                        }
                        return `<div class="table-row">
                        <div class="table-data" style="width:${colgroup[0]}px">
                            <img class="mini-user-ava" src="/onlinelearn/assets/img/user/${img}"/>
                        <div class="user-name">${mentor['first_name']} ${mentor['last_name']}</div></div>
                        <div class="table-data" style="width:${colgroup[1]}px">
                            <div>${course['title']}</div></div>
                        <div class="table-data" style="width:${colgroup[2]}px">
                            ${AP.money.dollar(course['price'] * course['total_register_number'])}</div>
                        <div class="table-data" style="width:${colgroup[3]}px">
                            ${AP.rate.star(course['rated_star'])}</div>
                    </div>`;
                    }, colgroup);
                    $("#page #" + id).html(table);
                },
                error: function (xhr) {

                }
            });
        },
        full: function (id, page, num_objs) {
            $.ajax({
                type: 'POST',
                url: "../admin/mentor",
                data: {
                    page: page,
                    num_objs: num_objs
                },
                success: function (response) {
                    var table_name = 'Mentor List';
                    var header = ['Mentor Name', 'Course','Menber Since', 'Earned', 'Account Status'];
                    var colgroup = [150, 90,70, 50, 130];
                    var data = JSON.parse(response);
                    var table = AP.tableRender(table_name, header, data, function (index) {
                        var mentor = JSON.parse(data[index]['account']);
                        var course = JSON.parse(data[index]['course']);
                        var img = mentor['pfp'];
                        if (img == null) {
                            img = 'default.jpg';
                        }
                        return `<div class="table-row">
                        <div class="table-data" style="width:${colgroup[0]}px">
                            <img class="mini-user-ava" src="/onlinelearn/assets/img/user/${img}"/>
                        <div class="user-name">${mentor['first_name']} ${mentor['last_name']}</div></div>
                        <div class="table-data" style="width:${colgroup[1]}px">
                            <div>${course['title']}</div></div>
                        <div class="table-data" style="width:${colgroup[2]}px">
                            </div>
                        <div class="table-data" style="width:${colgroup[3]}px">
                            ${AP.money.dollar(course['price'] * course['total_register_number'])}</div>
                        <div class="table-data" style="width:${colgroup[4]}px">
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

