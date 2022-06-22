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
     * @param {Bool} sorting Allow sorting.
     * @param {Bool} paging Allow paging
     * @param {Array} data Data for table.
     * @param {Function} handle Callback function to handling rendering table row.
     * @returns {String} 
     */
    tableRender: function (name, header, data, handle, colgroup = null, sorting = false, paging = false) {
        if (colgroup == null) {
            colgroup = Array(header.length).fill(100);
        }
        return `
            <div class="table">
                <div class="table-name">${name}</div>
                <div class="table-header">
                    ${AP.render(header, function (i) {
                        return `<div class="table-data" style="width: ${colgroup[i]}px;">${header[i]} ${sorting ? AP.sort() : ''}</div>`;
                    })}
                </div>
                ${AP.render(data, handle)}
            </div>
            ${paging?AP.paging():''}
        `;
    },
    rate: {
        star: function (num) {
            if (num < 0)
                num = 0;
            if (num > 5)
                num = 5;
            var star = '';
            for (var i = 0; i < num; i++) {
                star += `<div class="star-full"><svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="#ffbc34" viewBox="0 0 24 24"><path d="M12 .587l3.668 7.568 8.332 1.151-6.064 5.828 1.48 8.279-7.416-3.967-7.417 3.967 1.481-8.279-6.064-5.828 8.332-1.151z"/></svg></div>`;
            }
            for (var i = num; i < 5; i++) {
                star += `<div class="star-empty"><svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="#b8bdc1" viewBox="0 0 24 24" ><path d="m11.322 2.923c.126-.259.39-.423.678-.423.289 0 .552.164.678.423.974 1.998 2.65 5.44 2.65 5.44s3.811.524 6.022.829c.403.055.65.396.65.747 0 .19-.072.383-.231.536-1.61 1.538-4.382 4.191-4.382 4.191s.677 3.767 1.069 5.952c.083.462-.275.882-.742.882-.122 0-.244-.029-.355-.089-1.968-1.048-5.359-2.851-5.359-2.851s-3.391 1.803-5.359 2.851c-.111.06-.234.089-.356.089-.465 0-.825-.421-.741-.882.393-2.185 1.07-5.952 1.07-5.952s-2.773-2.653-4.382-4.191c-.16-.153-.232-.346-.232-.535 0-.352.249-.694.651-.748 2.211-.305 6.021-.829 6.021-.829s1.677-3.442 2.65-5.44zm.678 2.033-2.361 4.792-5.246.719 3.848 3.643-.948 5.255 4.707-2.505 4.707 2.505-.951-5.236 3.851-3.662-5.314-.756z"/></svg></div>`;
            }
            return `<div class="rating-star">${star}</div>`;
        }
    },
    money: {
        dollar: function (num) {
            return `<div class="money">$${num}.00</div>`;
        }
    },
    sort: function (){
        
    },
    paging: function (){
        
    }
};

