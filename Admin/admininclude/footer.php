<!-- Jquery and Bootstrap Javascript -->
<script type="text/javascript" src="../js/jquery.min.js"></script>   
    <script type="text/javascript" src="../js/popper.min.js"></script> 
    <script type="text/javascript" src="../js/bootstrap.min.js"></script>
    <!-- font awesome -->
    <script type="text/javascript" src="../js/all.min.js"></script>
    <!-- Admin Ajax call javascript -->
    <script type="text/javascript" src="../js/adminajaxrequest.js"></script>
    <!-- custome Javascript -->
    <script type="text/javascript" src="../js/custom.js"></script>
    
    <!--switalert set js-->
      <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
   
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

    <script>
$('.delete-confirm').on('click', function (event) {
    event.preventDefault();
    const url = $(this).attr('href');
    swal({
        title: 'Are you sure?',
        text: 'This record  will be permanantly deleted!',
        icon: 'warning',
        dangerMode: true,
        buttons: ["Cancel", "Yes!"],
    }).then(function(value) {
        if (value) {
          swal({
          title: "Congratulation!",
          text: "You have successfully deleted!",
          icon: "success",
          button: "Yes!",
        });
        setTimeout(function () {
          window.location.href = url;
        },3600);
        
        }else{
          swal({
          title: "oops!",
          text: "Delete Failed!",
          icon: "error",
          button: "Yes!",
        });
        }
    });
});
// user block and unblock script
$('.deactive').on('click', function (event) {
    event.preventDefault();
    const url = $(this).attr('href');
    swal({
        title: 'Are you sure?',
        text: '',
        icon: 'warning',
        dangerMode: true,
        buttons: ["Cancel", "Yes!"],
    }).then(function(value) {
        if (value) {
          swal({
          title: "Congratulation!",
          text: "You have successfully Status Updated!",
          icon: "success",
          button: "Yes!",
        });
        setTimeout(function () {
          window.location.href = url;
        },3600);
        
        }else{
          swal({
          title: "oops!",
          text: "Failed!",
          icon: "error",
          button: "Yes!",
        });
        }
    });
});


    </script>



</body>
</html>