/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

var Transaction = {
    /**
     * 
     * @returns {undefined}
     */
    init: function () {
        $('.menu-item').removeClass('active');
        $('.menu #transaction').addClass('active');
    },
    /**
     * 
     * @param {type} id
     * @param {type} page
     * @param {type} num_objs
     * @param {type} sort
     * @param {type} asc
     * @returns {undefined}
     */
    board: function (id, page, num_objs, sort = null, asc = true) {
        $.ajax({
            type: 'POST',
            url: "../admin/transaction",
            data: {
                page: page,
                num_objs: num_objs,
                sort: sort,
                asc: asc
            },
            success: function (response) {
                var table_name = 'Transaction List';
                var header = ['#Number', 'Mentee', 'Total Amount', 'Time', 'Status', 'Action']
                var colgroup = [130, 255, 155, 100, 155, 155];
                var data = JSON.parse(response);
                var table = AP.table.render(table_name, header, data, function (index) {
                    var transaction = data[index];
                    var mentee = data[index].mentee;
                    var img = mentee.pfp;
                    if (img == null) {
                        img = 'default.jpg';
                    }
                    return `<div class="table-row">
                        <div class="table-data" style="width:${colgroup[0]}px">
                            #IN00${transaction.id}
                        </div>
                        <div class="table-data" style="width:${colgroup[1]}px">
                            <img class="mini-user-ava" src="/onlinelearn/assets/img/user/${img}" alt="ava"/>
                        <div class="user-name">${mentee['first_name']} ${mentee['last_name']}</div></div>
                        <div class="table-data" style="width:${colgroup[2]}px">
                            ${AP.money.dollar(transaction.amount)}
                        </div>
                        <div class="table-data" style="width:${colgroup[3]}px;">
                            ${AP.time.time(transaction.last_update)}
                        </div>
                        <div class="table-data" style="width:${colgroup[4]}px;">
                            ${AP.status(1)}
                        </div>
                        <div class="table-data" style="width:${colgroup[5]}px; display:flex;align-items: center;justify-content: flex-start;">
                            <div class="btn-edit" style="position: relative;">Edit</div>
                            <div class="btn-remove" style="position: relative;margin-left:10px;">Remove</div>
                        </div>
                    </div>`;
                }, colgroup, true, true);
                $("#page #" + id).html(table);

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
                            id: st.attr('for'),
                            status: st.find('input').val()
                        },
                        success: function (response) {

                        }
                    });
                });

                $('.sorting').click(function () {
                    var sorted = $(this).find('.sorted');
                    var asc = sorted.hasClass('sorting-asc');
                    var index = $(this).attr("id").split("-")[1];
                    $.ajax({
                        type: 'POST',
                        url: '../admin/ajax/course/sorting',
                        data: {
                            index: index,
                            asc: asc
                        },
                        success: function (response) {
                            var data = JSON.parse(response);
                            console.log(data);
                            var new_table = AP.render(data, function (index) {
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
                                                ${mentor['created_at']}</div>
                                            <div class="table-data" style="width:${colgroup[3]}px">
                                                ${AP.money.dollar(course['price'] * course['total_register_number'])}</div>
                                            <div class="table-data" style="width:${colgroup[4]}px">
                                                ${AP.status(mentor['aid'])}
                                                </div>
                                        </div>`;
                            });
                            console.log(new_table);
                            $('.table-body').html(new_table);
                        }
                    });

                });
            },
            error: function (xhr) {

            }
        });
    },
    display: {

    },
    form: {

    }
};
