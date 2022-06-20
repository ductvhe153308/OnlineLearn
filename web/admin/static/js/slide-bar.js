/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

$('.url').click(function () {
    window.location = '../'+$(this).data('url');
});