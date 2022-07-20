/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 * Mentee object for project, include CRUD of mentor.
 * @type Object
 */
var Mentee = {
    /**
     * 
     * @returns {undefined}
     */
    init: function () {
        $('.menu-item').removeClass('active');
        $('.menu #mentee').addClass('active');
    },
    /**
     * Handling show objects in list.
     */
    board: {
        /**
         * Display list of mentees in dashboard.
         * @param {String} id Id of component to show.
         * @param {Int} page current page in paginate
         * @param {Int} num_objs number of mentee in page.
         */
        dashboard: function (id, page, num_objs) {
            $.ajax({
                type: 'POST',
                url: "../admin/mentee",
                data: {
                    page: page,
                    num_objs: num_objs
                },
                success: function (response) {
                    var table_name = 'Mentee List';
                    var header = ['Mentee Name', 'Phone', 'Last visit', 'Paid'];
                    var colgroup = [210, 100, 100, 70];
                    var data = JSON.parse(response);
                    var table = AP.table.render(table_name, header, data, function (index) {
                        var mentee = JSON.parse(data[index]['account']);
                        console.log(mentee)
                        var img = mentee['pfp'];
                        if (img == null) {
                            img = 'default.jpg';
                        }
                        return `<div class="table-row">
                        <div class="table-data" style="width:${colgroup[0]}px">
                            <img class="mini-user-ava" src="/onlinelearn/assets/img/user/${img}" alt="ava"/>
                        <div class="user-name">${mentee['first_name']} ${mentee['last_name']}</div></div>
                        <div class="table-data" style="width:${colgroup[1]}px">
                            <div>${mentee['phone']}</div></div>
                        <div class="table-data" style="width:${colgroup[2]}px;padding-top:10px;">
                            ${mentee['created_at']}</div>
                        <div class="table-data" style="width:${colgroup[3]}px">
                            ${AP.money.dollar(100)}</div>
                    </div>`;
                    }, colgroup);
                    $("#page #" + id).html(table);
                },
                error: function (xhr) {

                }
            });
        },
        /**
         * Display list of mentors in mentor list page.
         * @param {String} id Id of component to show.
         * @param {Int} page current page in paginate
         * @param {Int} num_objs number of mentor in page.
         */
        full: function (id, page, num_objs, sort = null, asc = true) {
            $.ajax({
                type: 'POST',
                url: "../admin/mentee",
                data: {
                    page: page,
                    num_objs: num_objs,
                    sort: sort,
                    asc: asc
                },
                success: function (response) {
                    var table_name = 'Mentee List';
                    var header = ['Mentee Name', 'Phone', 'Menber Since', 'Paid', 'Account Status'];
                    var colgroup = [210, 150, 150, 150, 190];
                    var data = JSON.parse(response);
                    var table = AP.table.render(table_name, header, data, function (index) {
                        var mentee = JSON.parse(data[index]['account']);
                        var img = mentee['pfp'];
                        if (img == null) {
                            img = 'default.jpg';
                        }
                        return `<div class="table-row">
                        <div class="table-data" style="width:${colgroup[0]}px">
                            <img class="mini-user-ava" src="/onlinelearn/assets/img/user/${img}"/>
                        <div class="user-name">${mentee['first_name']} ${mentee['last_name']}</div></div>
                        <div class="table-data" style="width:${colgroup[1]}px">
                            <div>${mentee['phone']}</div></div>
                        <div class="table-data" style="width:${colgroup[2]}px; padding-top: 15px;">
                            ${mentee['created_at']}</div>
                        <div class="table-data" style="width:${colgroup[3]}px">
                            ${AP.money.dollar(210)}</div>
                        <div class="table-data" style="width:${colgroup[4]}px">
                            ${AP.status(mentee['aid'], mentee['enabled'])}
                            </div>
                    </div>`;
                    }, colgroup, true, true);
                    $("#page #" + id).html(table);

                    $('.status').click(
                            function () {
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
                            }
                    );

                    $('.sorting').click(function () {
                        var sorted = $(this).find('.sorted');
                        var asc = sorted.hasClass('sorting-asc');
                        var index = $(this).attr("id").split("-")[1];
                        $.ajax({
                            type: 'POST',
                            url: '../admin/ajax/mentee/sort',
                            data: {
                                index: index,
                                asc: asc
                            },
                            success: function (response) {
                                var data = JSON.parse(response);
                                console.log(data);
                                var new_table = AP.render(data, function (index) {
                                    var mentee = JSON.parse(data[index]['account']);
                                    console.log(mentee)
                                    var img = mentee['pfp'];
                                    if (img == null) {
                                        img = 'default.jpg';
                                    }
                                    return `<div class="table-row">
                                                <div class="table-data" style="width:${colgroup[0]}px">
                                                    <img class="mini-user-ava" src="/onlinelearn/assets/img/user/${img}"/>
                                                <div class="user-name">${mentee['first_name']} ${mentee['last_name']}</div></div>
                                                <div class="table-data" style="width:${colgroup[1]}px">
                                                    <div>${mentee['phone']}</div></div>
                                                <div class="table-data" style="width:${colgroup[2]}px;padding-top: 15px;">
                                                    ${mentee['created_at']}</div>
                                                <div class="table-data" style="width:${colgroup[3]}px">
                                                    ${AP.money.dollar(210)}</div>
                                                <div class="table-data" style="width:${colgroup[4]}px">
                                                    ${AP.status(mentee['aid'], mentee['enabled'])}
                                                    </div>
                                            </div>`;
                                });
                                console.log(new_table);
                                $('.table-body').html(new_table);
                                $('.status').click(
                                        function () {
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
                                        }
                                );
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
     * Handling show an Mentee
     * @type type
     */
    display: {

    },
    /**
     * Handing edit, add mentee
     * @type type
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
