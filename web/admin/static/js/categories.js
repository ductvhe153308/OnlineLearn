/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

var Categories = {
    init: function () {
        $('.menu-item').removeClass('active');
        $('.menu #categories').addClass('active');
    },
    board: function (id, page, num_objs, sort = null, asc = true){
        $.ajax({
                type: 'POST',
                url: "../admin/categories",
                data: {
                    page: page,
                    num_objs: num_objs,
                    sort: sort,
                    asc: asc
                },
                success: function (response) {
                    var table_name = 'Categories List';
                    var header = ['#', 'Category', 'Date', 'Reviews', 'Action']
                    var colgroup = [100, 155, 155, 155, 155];
                    var data = JSON.parse(response);
                    console.log(data)
                    var table = AP.table.render(table_name, header, data, function (index) {
                        var booking = data[index]
                        var mentor = booking['mentor']
                        var course = booking['course']
                        var mentee = booking['mentee']
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
                            <img class="mini-user-ava" src="/onlinelearn/assets/img/user/${y_img}" alt="ava"/>
                            <div class="user-name">${mentee['first_name']} ${mentee['last_name']}</div>
                        </div>
                        <div class="table-data" style="width:${colgroup[3]}px">${AP.time.time(booking.booking_time)}<br><div style="color:#009DA6; padding-left:0px;">${AP.time.duration(booking.booking_time, booking.duration)}</div></div>
                        <div class="table-data" style="width:${colgroup[4]}px">
                            ${AP.status(booking['id'], booking['status'])}
                            </div>
                        <div class="table-data" style="width:${colgroup[4]}px">
                            ${AP.money.dollar(course['price'] * course['total_register_number'])}
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
    display : {
        
    },
    form:{
        
    }
};
