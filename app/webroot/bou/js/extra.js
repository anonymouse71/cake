<script type="text/javascript">

$('.tree-toggle').click(function () {
    $(this).parent().children('ul.tree').toggle(200);
    $(this).toggleClass('open');
    });

function PreviewImage(no) {
    var oFReader = new FileReader();
    oFReader.readAsDataURL(document.getElementById("uploadImage"+no).files[0]);

    oFReader.onload = function (oFREvent) {
    document.getElementById("uploadPreview"+no).src = oFREvent.target.result;
    };
    }

$(document).ready(function () {
    $(".responsive-calendar").responsiveCalendar({
        time: '2014-11',
        events: {
            "2014-11-30": {}}
    });
    });



</script>