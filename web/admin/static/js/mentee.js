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
    init: function () {
        $('.menu-item').removeClass('active');
        $('.menu #mentee').addClass('active');
        Mentee.board.full('mentee', 1, 10);
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
                    var colgroup = [150, 90, 50, 130];
                    var data = JSON.parse(response);
                    var table = AP.table.render(table_name, header, data, function (index) {
                        var mentee = JSON.parse(data[index]['account']);
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
                        <div class="table-data" style="width:${colgroup[2]}px">
                            None</div>
                        <div class="table-data" style="width:${colgroup[3]}px">
                            ${AP.money.dollar(100)}</div>
                    </div>`;
                    }, colgroup, true, true);
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
                    var colgroup = [150, 90, 70, 50, 150];
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
                        <div class="table-data" style="width:${colgroup[2]}px">
                            </div>
                        <div class="table-data" style="width:${colgroup[3]}px">
                            ${AP.money.dollar(210)}</div>
                        <div class="table-data" style="width:${colgroup[4]}px">
                            ${AP.status(mentee['aid'])}
                            </div>
                    </div>`;
                    }, colgroup, function (id, sort = null, asc = true) {
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

    }
};
