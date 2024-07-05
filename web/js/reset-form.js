$(window).on('pageshow', function(event) {
    if (event.originalEvent.persisted) {
        $('#form')[0].reset();
    }
});