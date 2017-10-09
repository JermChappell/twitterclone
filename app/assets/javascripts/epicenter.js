
$(document).ready(function() {
    $('#unfollow_btn').hover(funtion() {
        $(this).removeClass('btn-primary');
        $(this).addClass('btn-danger');
        $(this).html('Unfollow');
    },funtion() {
        $(this).html('Follow');
        $(this).removeClass('btn_danger');
        $(this).addClass('btn_primary');
    }
        
    });    
});