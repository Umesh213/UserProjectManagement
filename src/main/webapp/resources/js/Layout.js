$(document).ready(function() {
myLayout = $('body').layout({
        togglerLength_open: 0,
        togglerLength_closed: "100%",
        west__showOverflowOnHover: true,
        north__minSize: 70,
        south__minSize: 53,
        north__resizable: false,
        south__resizable: false,
        north__spacing_open: 0,
        north__spacing_closed: 0,
        south__spacing_open: 0,
        south__spacing_closed: 0,
        west__spacing_open: 4
    });
});