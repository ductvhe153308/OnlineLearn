/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

var Mentor = {
    init: function () {
        $('.menu-item').removeClass('active');
        $('.menu #mentor').addClass('active');
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
                    var colgroup = [70, 90, 50, 100];
                    var data = JSON.parse(response);
                    var table = AP.tableRender(table_name, header, data, function (index) {
                        var mentor = JSON.parse(data[index]['account']);
                        var course = JSON.parse(data[index]['course']);
                        return `<div class="table-row">
                        <div class="table-data" style="width:${colgroup[0]}px">${mentor['first_name']}</div>
                        <div class="table-data" style="width:${colgroup[1]}px">${course['title']}</div>
                        <div class="table-data" style="width:${colgroup[2]}px">${course['price']}</div>
                        <div class="table-data" style="width:${colgroup[3]}px">${course['rated_star']}</div>
                    </div>`;
                    }, colgroup);
                    $("#page #mentor").html(table);
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

