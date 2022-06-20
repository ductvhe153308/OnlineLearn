/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

var AP = {

    /**
     * 
     * @param {Array} arr Array to make data render.
     * @param {Function} handle Callback function to handling rendering.
     * @returns {String}
     */
    render: function (arr, handle) {
        var result = '';
        for (var x in arr) {
            result += handle(x);
        }
        return result;
    },

    /**
     * Render a table from your config and data.
     * @param {String} name Table name
     * @param {Array} header 
     * @param {Array} colgroup Config col width for table. Default : 100px
     * @param {Array} data Data for table.
     * @param {Function} handle Callback function to handling rendering table row.
     * @returns {String} 
     */
    tableRender: function (name, header, data, handle, colgroup = null) {
        if (colgroup == null) {
            colgroup = Array(header.length).fill(100);
        }
        return `
            <div class="table">
                <div class="table-name">${name}</div>
                <div class="table-header">
                    ${AP.render(header, function (i) {
            return `<div class="table-data" style="width: ${colgroup[i]}px;">${header[i]}</div>`;
        })}
                </div>
                ${AP.render(data, handle)}
            </div>
        `;
    },
    rate: {
        star: function (num) {
            if (num < 0)
                num = 0;
            if (num > 5)
                num = 5;
            return `<div class="rating-star">
                        ${AP.render(Array(num), function () {return `<div class="star-full"></div>`;})}
                        ${AP.render(Array(5-num), function () {return `<div class="star-empty"></div>`;})}
                    </div>`;
        }
    }
};

