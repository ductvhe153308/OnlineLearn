/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

var Mentee = {
    init: function () {
        $('.menu-item').removeClass('active');
        $('.menu #mentee').addClass('active');
    },
    board: {
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
                    }, colgroup);
                    $("#page #"+id).html(table);
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
