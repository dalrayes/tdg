$(document).on('page:load', function() {//turbolinks
  $(document).foundation();
});

var main = function() {
    //Nav Explore Toggle on Click
    $('.top-bar-left>ul>li:nth-child(2)').click(function() {
        if ($(this).hasClass("is-active")) {
            $(this).removeClass("is-active").attr("aria-expanded", "false").attr("aria-selected", "false");
            $(this).children('ul').attr("aria-hidden", "true").removeClass("js-dropdown-active");
        } else if (!$(this).hasClass("is-active")) {
            $(this).addClass("is-active").attr("aria-expanded", "true").attr("aria-selected", "true");
            $(this).children('ul').attr("aria-hidden", "false").addClass("js-dropdown-active");
            } {
        }
    });
};
$(document).ready(main);
$(document).on('page:load', main);//turbolinks