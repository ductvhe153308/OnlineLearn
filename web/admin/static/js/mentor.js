/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 * Mentor object for project, include CRUD of mentor.
 * @type Object
 */
var Mentor = {
    /**
     * Build mentor list page.
     */
    init: function () {
        $('.menu-item').removeClass('active');
        $('.menu #mentor').addClass('active');
        Mentor.board.full('mentor', 1, 10);
    },
    board: {
        /**
         * Display list of mentors in dashboard.
         * @param {String} id Id of component to show.
         * @param {Int} page current page in paginate
         * @param {Int} num_objs number of mentor in page.
         */
        dashboard: function (id, page, num_objs) {
            $.ajax({
                type: 'POST',
                url: "../admin/mentor",
                data: {
                    page: page,
                    num_objs: num_objs
                },
                success: function (response) { // Kieu String
                    var table_name = 'Mentor List';
                    var header = ['Mentor Name', 'Course', 'Earned', 'Reviews'];
                    var colgroup = [150, 90, 50, 130];
                    var data = JSON.parse(response);
                    var table = AP.table.render(table_name, header, data, function (index) {
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
        /**
         * Make a list of mentor for an element.
         * @param {type} id element id.
         * @param {type} page page number of list (for paging).
         * @param {type} num_objs number of mentors in page.
         * @param {type} sort Allow sorting table.
         * @param {type} asc Type of sorting.
         */
        full: function (id, page, num_objs, sort = null, asc = true) {
            $.ajax({
                type: 'POST',
                url: "../admin/mentor",
                data: {
                    page: page,
                    num_objs: num_objs,
                    sort: sort,
                    asc: asc
                },
                success: function (response) {
                    var table_name = 'Mentor List';
                    var header = ['Mentor Name', 'Course', 'Menber Since', 'Earned', 'Account Status'];
                    var colgroup = [150, 90, 70, 50, 150];
                    var data = JSON.parse(response);
                    var table = AP.table.render(table_name, header, data, function (index) {
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
                            ${AP.status(mentor['aid'])}
                            </div>
                    </div>`;
                    }, colgroup, function (id, sort = null, asc = true) {
                        $.ajax({
                            type: 'POST',
                            url: "../admin/mentor",
                            data: {
                                page: page,
                                num_objs: num_objs,
                                sort: sort,
                                asc: asc
                            },
                            success: function (response) {
                                var data = JSON.parse(response);
                                AP.table.change(id, data);
                            },
                            error: function (xhr) {

                            }
                        });
                    }, true);
                    $("#page #" + id).html(table);

                    $('.status').click(
                            function () {
                                var st = $(this);
                                if (st.hasClass('disabled')) {
                                    st.find('input').val(1);
                                    return st.removeClass('disabled');
                                }
                                st.find('input').val(0);
                                return st.addClass('disabled');
                            }
                    );
                },
                error: function (xhr) {

                }
            });
        }
    },
    /**
     * Handling show an mentor
     */
    display: {

    },
    /**
     * Handling add, update, delete mentor.
     */
    form: {

    }
};

