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
    },
    /**
     * 
     * @type type
     */
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
                    var colgroup = [210, 90, 100, 130];
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
                    var colgroup = [210, 150, 150, 150, 180];
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
                        <div class="table-data" style="width:${colgroup[2]}px;padding-top: 15px;">
                            ${mentor['created_at']}</div>
                        <div class="table-data" style="width:${colgroup[3]}px">
                            ${AP.money.dollar(course['price'] * course['total_register_number'])}</div>
                        <div class="table-data" style="width:${colgroup[4]}px">
                            ${AP.status(mentor['aid'], mentor['enabled'])}
                            </div>
                    </div>`;
                    }, colgroup, true, true);
                    $("#page #" + id).html(table);

                    $('.sorting').click(function () {
                        var sorted = $(this).find('.sorted');
                        var asc = sorted.hasClass('sorting-asc');
                        var index = $(this).attr("id").split("-")[1];
                        $.ajax({
                            type: 'POST',
                            url: '../admin/ajax/mentor/sorting',
                            data: {
                                index: index,
                                asc: asc
                            },
                            success: function (response) {
                                var data = JSON.parse(response);
                                var new_table = AP.render(data, function (index) {
                                    var mentor = JSON.parse(data[index]['account']);
                                    console.log(mentor);
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
                                            <div class="table-data" style="width:${colgroup[2]}px;padding-top: 15px;">
                                                ${mentor['created_at']}</div>
                                            <div class="table-data" style="width:${colgroup[3]}px">
                                                ${AP.money.dollar(course['price'] * course['total_register_number'])}</div>
                                            <div class="table-data" style="width:${colgroup[4]}px">
                                                ${AP.status(mentor['aid'], mentor['enabled'])}
                                                </div>
                                        </div>`;
                                });
                                console.log(new_table);
                                $('.table-body').html(new_table);
                                $('.status').click(function () {
                                    var st = $(this);
                                    if (st.hasClass('disabled')) {
                                        st.find('input').val(1);
                                        st.removeClass('disabled');
                                    } else {
                                        st.find('input').val(0);
                                        st.addClass('disabled');
                                    }
                                    $.ajax({
                                        url: '../ajax/admin/status',
                                        type: 'post',
                                        data: {
                                            aid: st.attr('for'),
                                            enabled: st.find('input').val()
                                        },
                                        success: function (response) {

                                        }
                                    });
                                });
                            }
                        });

                    });


                    $('.status').click(function () {
                        var st = $(this);
                        if (st.hasClass('disabled')) {
                            st.find('input').val(1);
                            st.removeClass('disabled');
                        } else {
                            st.find('input').val(0);
                            st.addClass('disabled');
                        }
                        $.ajax({
                            url: '../ajax/admin/status',
                            type: 'post',
                            data: {
                                aid: st.attr('for'),
                                enabled: st.find('input').val()
                            },
                            success: function (response) {

                            }
                        });
                    });
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
        add: function () {
            $("#submit-trigger").click(function () {
                var email = $("input[name=email]").val();
                $.ajax({
                    url: '/onlinelearn/ajax/admin/search',
                    type: 'POST',
                    data: {
                        email: email
                    },
                    success: function (response) {
                        if (response == 0) {
                            return $("#submit").click();
                        }
                        return AP.alertError("This email has been registered!");
                    },
                    error: function (xhr) {
                    }
                });
            });
        }
    }
};

