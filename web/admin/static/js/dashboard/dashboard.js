/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

var Dashboard = {
    init : function (){
        this.profile();
    },
    profile: function (){
        $('#page').append(`
            <div class="row">
                <div class="col-4">
                    <div class="component"></div>
                    <div class="component"></div>
                </div>
                <div class="col-8">
                    <div class="row">
                        <div class="col-4 component"></div>
                        <div class="col-4 component"></div>
                        <div class="col-4 component"></div>
                    </div>
                </div>
            </div>`);
    }
};
