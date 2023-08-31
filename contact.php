<?php

include('./maininclude/header.php');
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>complete responsive app landing page website design tutorial</title>

    <!-- font awesome cdn link  -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">

    <!-- custom css file link  -->
    <link rel="stylesheet" href="Elearning/css/conta.css">

</head>
<body>

<section class="contact" id="contact">

    <div class="image">
        <img src="images/contact-img.png" alt="">
    </div>

    <form method ="post" id="frmContactus">

        <h1 class="heading">contact us</h1>

        <div class="inputBox">
            <input type="text" id="name" name="name" required>
            <label>name</label>
        </div>

        <div class="inputBox">
            <input type="email" id="email" name="email" required>
            <label>email</label>
        </div>

        <div class="inputBox">
            <input type="number" id="mobile" name="mobile" required>
            <label>phone</label>
        </div>

        <div class="inputBox">
            <textarea required name="comment" id="comment" cols="30" rows="10"></textarea>
            <label>message</label>
        </div>
        <button type="submit" class="btnh" name="submit" id="submit">Submit</button>
        <!-- <input type="submit" class="btnh" name="submit" id="submit" value="send message"> -->
        <span style="color:green; padding-top:0px; font-size:10px" id="msg"></span>
    </form>

</section>

<!-- contact section edns -->
<script>
    jQuery('#frmContactus').on('submit',function(e){
      jQuery('#msg').html('');
      jQuery('#submit').html('Please wait');
      jQuery('#submit').attr('disabled',true);
      jQuery.ajax({
          url:'submit.php',
          type:'post',
          data:jQuery('#frmContactus').serialize(),
          success:function(result){
              jQuery('#msg').html(result);
              jQuery('#submit').html('Submit');
              jQuery('#submit').attr('disabled',false);
              jQuery('#frmContactus')[0].reset();
          }
      });
      e.preventDefault();
    });
    </script>
    
</body>
</html>
<?php
include('./maininclude/footer.php');
?>