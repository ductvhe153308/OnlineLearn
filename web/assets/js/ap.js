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

    table: {
        /**
         * Render a table from your config and data.
         * @param {String} name Table name
         * @param {Array} header 
         * @param {Array} colgroup Config col width for table. Default : 100px
         * @param {Bool} sorting Allow sorting.
         * @param {Bool} paging Allow paging
         * @param {Array} data Data for table.
         * @param {Function} handle Callback function to handling the rendering table row.
         * @returns {String} HTML code of table.
         */
        render: function (name, header, data, handle, colgroup = null, sorting = null, paging = null) {
            this.sorter = sorting;
            this.builder = handle;
            if (colgroup == null) {
                colgroup = Array(header.length).fill(100);
            }

            this.view = `<div class="table">
                        <div class="table-name">${name}</div>
                        <div class="table-header">${AP.render(header, function (i) {
                var sort = sorting ? `<div class="sorting" id="sort-${i}" onclick="AP.table.sort(this);">
                    <svg class="sorting-asc" xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="#cdcecf" class="bi bi-arrow-down" viewBox="0 0 16 16">
                        <path fill-rule="evenodd" d="M8 1a.5.5 0 0 1 .5.5v11.793l3.146-3.147a.5.5 0 0 1 .708.708l-4 4a.5.5 0 0 1-.708 0l-4-4a.5.5 0 0 1 .708-.708L7.5 13.293V1.5A.5.5 0 0 1 8 1z"/>
                    </svg>
                    <svg class="sorting-desc" xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="#cdcecf" class="bi bi-arrow-up" viewBox="0 0 16 16">
                        <path fill-rule="evenodd" d="M8 15a.5.5 0 0 0 .5-.5V2.707l3.146 3.147a.5.5 0 0 0 .708-.708l-4-4a.5.5 0 0 0-.708 0l-4 4a.5.5 0 1 0 .708.708L7.5 2.707V14.5a.5.5 0 0 0 .5.5z"/>
                    </svg>
                </div>` : ``;
                return `<div class="table-data" style="width: ${colgroup[i]}px;">${header[i]} ${sort}</div>`;
            })}
                </div>
                <div class="table-body">                
                    ${AP.render(data, handle)}
                </div>
            </div>
            ${paging ? AP.paging() : ''}
        `;
            return this.view;
        },
        /**
         * Sort table with your handle.
         * @param {HTML Object} param header of column need to sort.
         */
        sort: function (param) {
            var asc = $(param).find('.sorting-asc');
            var desc = $(param).find('.sorting-desc');
            if (!asc.hasClass('sorted') && !desc.hasClass('sorted')) {
                $('.sorting-asc').removeClass('sorted');
                $('.sorting-desc').removeClass('sorted');
                asc.addClass('sorted');
            } else if (asc.hasClass('sorted')) {
                $('.sorting-asc').removeClass('sorted');
                $('.sorting-desc').removeClass('sorted');
                asc.removeClass('sorted');
                desc.addClass('sorted');
            } else if (desc.hasClass('sorted')) {
                $('.sorting-asc').removeClass('sorted');
                $('.sorting-desc').removeClass('sorted');
                desc.removeClass('sorted');
                asc.addClass('sorted');
            }
        },
        /**
         * Changing data of table without header and another config (for paging).
         * @param {String} id Id of table.
         * @param {Array} data New data for change.
         */
        change: function (id, data) {
            $('#' + id).find('.table-data').html(AP.render(data, this.builder));
        }
    },
    /**
     * Making a rating field.
     */
    rate: {
        /**
         * Rating by star.
         * @param {type} num number of star.(0-5)
         * @returns {String} HTML code of rating.
         */
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
    paging: function () {
        return `
            <div class="paging">
                <div class="page-prev">Previous</div>
                <div class="page-current">1</div>
                <div class="page-next">Next</div>
            </div>`;
    },
    /**
     * Make a status on/off for an element with id
     * @param {type} id Id of element
     * @param {type} type default on
     * @returns {String} HTML code for status.
     */
    status: function (id, type = true) {
        if (type) {
            return `<div class="status" for="${id}"><input type="hidden" id="${id}" value="1"><div class="status-circle"></div></div>`;
        }
        return `<div class="status disabled" for="${id}"><input type="hidden" id="${id}" value="0"><div class="status-circle"></div></div>`;
    },
    /**
     * Show a dialog error.
     * @param {String} message
     * @param {Function} handle
     */
    alertError: function (message, handle = null) {
        $("#page").before(`
            <div class="dialog-wapper">
                <div class="dialog error">
                        <div class="dialog-header">Error <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="#000000" class="right dialog-close bi bi-x-circle" viewBox="0 0 16 16"><path d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z"/><path d="M4.646 4.646a.5.5 0 0 1 .708 0L8 7.293l2.646-2.647a.5.5 0 0 1 .708.708L8.707 8l2.647 2.646a.5.5 0 0 1-.708.708L8 8.707l-2.646 2.647a.5.5 0 0 1-.708-.708L7.293 8 4.646 5.354a.5.5 0 0 1 0-.708z"/></svg>                  </div>
                        <div class="dialog-content"><h6>${message}</h6></div>
                        <div class="dialog-footer btn dialog-close">Ok</div>
                </div>
            </div>`);
        $(".dialog-close").click(function () {
            $(".dialog-wapper").remove();
        });
    },
    /**
     * Show a dialog success.
     * @param {String} message
     * @param {Function} handle
     */
    alertSuccess: function (message, handle = null) {
        $("#page").before(`
            <div class="dialog-wapper">
                <div class="dialog success">
                        <div class="dialog-header">Error <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="#000000" class="right dialog-close bi bi-x-circle" viewBox="0 0 16 16"><path d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z"/><path d="M4.646 4.646a.5.5 0 0 1 .708 0L8 7.293l2.646-2.647a.5.5 0 0 1 .708.708L8.707 8l2.647 2.646a.5.5 0 0 1-.708.708L8 8.707l-2.646 2.647a.5.5 0 0 1-.708-.708L7.293 8 4.646 5.354a.5.5 0 0 1 0-.708z"/></svg>                  </div>
                        <div class="dialog-content"><h6>${message}</h6></div>
                        <div class="dialog-footer btn dialog-close">Ok</div>
                </div>
            </div>`);
        $(".dialog-close").click(function () {
            $(".dialog-wapper").remove();
        });
    },
    /**
     * 
     * @param {type} title
     * @param {type} message
     * @param {type} handle
     * @returns {undefined}
     */
    dialog: function (title, message, handle = null) {
        $("#page").before(`
            <div class="dialog-wapper">
                <div class="dialog">
                        <div class="dialog-header">${title} <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="#000000" class="right dialog-close bi bi-x-circle" viewBox="0 0 16 16"><path d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z"/><path d="M4.646 4.646a.5.5 0 0 1 .708 0L8 7.293l2.646-2.647a.5.5 0 0 1 .708.708L8.707 8l2.647 2.646a.5.5 0 0 1-.708.708L8 8.707l-2.646 2.647a.5.5 0 0 1-.708-.708L7.293 8 4.646 5.354a.5.5 0 0 1 0-.708z"/></svg>                  </div>
                        <div class="dialog-content">${message}</div>
                        <div class="dialog-footer btn dialog-close">Ok</div>
                </div>
            </div>`);
        $(".dialog-close").click(function () {
            $(".dialog-wapper").remove();
        });
    },
    /**
     * Utils for time.
     */
    time: {
        /**
         * Get Date string from time stamp.
         * @param {Int} timestamp
         * @returns {String}
         */
        time: function (timestamp) {
            var date = new Date(timestamp * 1000);
            var month = date.getMonth() + 1;
            var day = date.getDate();
            switch (month) {
                case 1:
                    month = 'Jan';
                    break;
                case 2:
                    month = 'Feb';
                    break;
                case 3:
                    month = 'Mar';
                    break;
                case 4:
                    month = 'Apr';
                    break;
                case 5:
                    month = 'May';
                    break;
                case 6:
                    month = 'Jun';
                    break;
                case 7:
                    month = 'Jul';
                    break;
                case 8:
                    month = 'Aug';
                    break;
                case 9:
                    month = 'Sep';
                    break;
                case 10:
                    month = 'Oct';
                    break;
                case 11:
                    month = 'Nov';
                    break;
                case 12:
                    month = 'Dec';
                    break;

            }
            day = (day < 10 ? "0" : "") + day;
            return `${day} ${month} ${date.getFullYear()}`;
        },
        /**
         * Calculate duration time and make to visualize string
         * @param {Int} start 
         * @param {Int} duration
         * @returns {String}
         */
        duration: function (start, duration) {
            var date1 = new Date(start * 1000);
            var date2 = new Date((start + duration) * 1000);
            var am1 = true;
            var am2 = true;
            var h1 = date1.getHours();
            if (h1 > 12) {
                am1 = false;
            }
            if (h1 < 10) {
                h1 = `0${h1}`;
            }
            var h2 = date2.getHours();
            if (h2 > 12) {
                am2 = false;
            }
            if (h2 < 10) {
                h2 = `0${h2}`;
            }
            var m1 = date1.getMinutes();
            if (m1 < 10) {
                m1 = `0${m1}`;
            }
            var m2 = date2.getMinutes();
            if (m2 < 10) {
                m2 = `0${m2}`;
            }
            return `${h1}.${m1} ${am1 ? 'AM' : 'PM'} - ${h2}.${m2} ${am2 ? 'AM' : 'PM'}`;
        }
    },
    /**
     * Refresh page
     */
    refresh: function () {
        location.reload();
    }
};

