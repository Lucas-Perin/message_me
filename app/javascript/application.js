//= require rails-ujs
//= require jquery
//= require activestorage
//= require turbolinks
//= require semantic-ui
//= require_tree .
import "@hotwired/turbo-rails"
import "controllers"
import "channels"

scroll_bottom = function () {
    if ($('#messages').length > 0) {
        $('#messages').scrollTop($('#messages'[0].scrollHeigth));
    };
};

submit_message = function () {
    $('#message_body').on('keydown', function (e) {
        if (e.keyCode == 13) {
            $('button').click();
            e.target.value = "";
        };
    });
};

$(document).on('turbolinks:load', function () {
    $('.ui.dropdown').dropdown();
    $('.message .close').on('click', function () {
        $(this).closest('.message').transition('fade');
    });
    submit_message();
    scroll_bottom();
})
