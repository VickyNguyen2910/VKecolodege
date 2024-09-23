<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link  rel="stylesheet" href="https://unpkg.com/swiper@7/swiper-bundle.min.css">
  <?php require('inc/links.php'); ?>
  <title><?php echo $settings_r['site_title'] ?> - GIỚI THIỆU</title>
  <link rel="icon" type="image/x-icon" href="images/favicon-192x192.png">
  <style>
    .box{
      border-top-color: var(--teal) !important;
    }
  </style>
  <style>
    @import url('https://fonts.googleapis.com/css2?family=Rowdies:wght@300;400;700&display=swap');
    @import url('https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,100..900;1,100..900&display=swap');
  </style>
</head>
<body class="bg-grey">

  <?php require('inc/header.php'); ?>

  <div class="my-5 px-4 page-title">
    <h2 class="fw-bold h-font text-center">GIỚI THIỆU</h2>
    <h5 class="text-center mt-3 fw-bold">
    - VKecolodge - <br> Một thoáng Bắc Âu giữa đại ngàn Tây Bắc
  </h5>
  </div>

  <div class="container">
    <div class="row align-items-center">
    <div class="col-lg-12 col-md-12 mb-4">
        <img src="images/about/banner-fw.png" class="w-100">
      </div>
      <div class="col-lg-12 col-md-12 mb-4">
        <p>
        VKecolodge là một khu nghỉ dưỡng nằm trên một đỉnh núi tuyệt đẹp, ẩn sâu trong khu bảo tồn quốc gia Hoàng Liên, cách thị xã Sapa 45 phút di chuyển.
        </p>
        <p>
        Được đề cử là một trong những nơi lưu trú tuyệt vời nhất cho những người yêu thiên nhiên và cuộc sống xanh, VKecolodge mang đến một không gian hoàn hảo để bạn vừa có thể nghỉ dưỡng, vừa góp phần bảo vệ môi trường cũng như văn hóa địa phương.
        </p>
        <p>
Khu nghỉ dưỡng gồm 49 bungalow được xây dựng bằng đá granite trắng theo phong cách nhà sàn địa phương, lấy vẻ đẹp hoang sơ làm điểm nhấn chủ đạo, mang đến cho bạn trải nghiệm vô cùng tiện nghi, sang trọng.
</p>
<p>
VKecolodge là sự lựa chọn lý tưởng và duy nhất tại Sapa dành cho những ai đang đi tìm những khoảnh khắc riêng tư, yên bình cũng như những khung cảnh núi non ngoạn mục độc nhất vô nhị tại Việt Nam.
        </p>
      </div>
      
    </div>
  </div>

  <div class="container mt-5">
    <div class="row">
      <div class="col-lg-3 col-md-6 mb-4 px-3 d-flex">
        <div class="bg-white rounded shadow p-4 text-center box w-100">
          <h4 class="mt-3">100+ PHÒNG</h4>
        </div>
      </div>
      <div class="col-lg-3 col-md-6 mb-4 px-3 d-flex">
        <div class="bg-white rounded shadow p-4 text-center box w-100">
          <h4 class="mt-3">200+ KHÁCH HÀNG</h4>
        </div>
      </div>
      <div class="col-lg-3 col-md-6 mb-4 px-3 d-flex">
        <div class="bg-white rounded shadow p-4 text-center box w-100">
          <h4 class="mt-3">150+ ĐÁNH GIÁ</h4>
        </div>
      </div>
      <div class="col-lg-3 col-md-6 mb-4 px-3 d-flex">
        <div class="bg-white rounded shadow p-4 text-center box w-100">
          <h4 class="mt-3">200+ NHÂN VIÊN</h4>
        </div>
      </div>
    </div>
  </div>

  <?php require('inc/footer.php'); ?>

  <script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>

  <script>
    var swiper = new Swiper(".mySwiper", {
      spaceBetween: 40,
      pagination: {
        el: ".swiper-pagination",
      },
      breakpoints: {
        320: {
          slidesPerView: 1,
        },
        640: {
          slidesPerView: 1,
        },
        768: {
          slidesPerView: 3,
        },
        1024: {
          slidesPerView: 3,
        },
      }
    });
  </script>


</body>
</html>