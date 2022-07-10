/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 * Active a url, redirect to data-url of element.
 */
$('.url').click(function () {
    window.location = window.location.origin+'/onlinelearn/'+$(this).data('url');
});
