<?php
$servername = "localhost";
$username = "root";
$password = "root";
$dbname = "vkhotel";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Error Reporting for Debugging
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);

// Handle image upload
if (isset($_POST['add_image'])) {
  $file_name = str_replace(' ', '_', $_FILES['picture']['name']); // Replace spaces with underscores
  $file_temp = $_FILES['picture']['tmp_name'];
  $file_size = $_FILES['picture']['size'];
  $allowed_ext = array('jpg', 'jpeg', 'png');

  $ext = pathinfo($file_name, PATHINFO_EXTENSION);

  if (!in_array($ext, $allowed_ext)) {
      echo 'inv_img';
  } elseif ($file_size > 5000388608) {
      echo 'inv_size';
  } else {
      $target_dir = $_SERVER['DOCUMENT_ROOT'] . "/vkhotel/images/carousel/"; // Updated path
      $target_file = $target_dir . basename($file_name);

      if (move_uploaded_file($file_temp, $target_file)) {
          $query = "INSERT INTO carousel (type, file_name) VALUES ('image', '$file_name')";
          if (mysqli_query($conn, $query)) {
              echo 'success';
          } else {
              echo 'SQL Error: ' . mysqli_error($conn);
          }
      } else {
          echo 'upd_failed';
      }
  }
}

// Handle video upload
if (isset($_POST['add_video'])) {
  $file_name = str_replace(' ', '_', $_FILES['video']['name']); // Replace spaces with underscores
  $file_temp = $_FILES['video']['tmp_name'];
  $file_size = $_FILES['video']['size'];
  $allowed_ext = array('mp4');

  $ext = pathinfo($file_name, PATHINFO_EXTENSION);

  if (!in_array($ext, $allowed_ext)) {
      echo 'inv_video';
  } elseif ($file_size > 50485760) { // 50MB limit
      echo 'inv_size';
  } else {
      $target_dir = $_SERVER['DOCUMENT_ROOT'] . "/vkhotel/images/carousel/"; // Updated path
      $target_file = $target_dir . basename($file_name);

      if (move_uploaded_file($file_temp, $target_file)) {
          $query = "INSERT INTO carousel (type, file_name) VALUES ('video', '$file_name')";
          if (mysqli_query($conn, $query)) {
              echo 'success';
          } else {
              echo 'SQL Error: ' . mysqli_error($conn);
          }
      } else {
          echo 'upd_failed';
      }
  }
}

// Construct the base URL dynamically
// Construct the base URL dynamically
$protocol = (!empty($_SERVER['HTTPS']) && $_SERVER['HTTPS'] !== 'off' || $_SERVER['SERVER_PORT'] == 443) ? "https://" : "http://";
$host = $_SERVER['HTTP_HOST']; // e.g., localhost:8888

// Assuming 'vkhotel' is your root directory, you can set the base URL manually
$base_url = $protocol . $host . '/vkhotel/';



// Fetch and return carousel items
if (isset($_POST['get_carousel'])) {
  $query = "SELECT * FROM carousel ORDER BY sr_no DESC";
  $result = mysqli_query($conn, $query);
  $output = '';
  while ($row = mysqli_fetch_assoc($result)) {
      if ($row['type'] == 'image') {
          $imagePath = $base_url . 'images/carousel/' . $row['file_name']; // Corrected full URL
          $output .= '<div class="col-md-4 mb-3">
              <div class="card bg-dark text-white">
              <img src="' . $imagePath . '" class="card-img">
              <div class="card-img-overlay text-end">
                <button type="button" onclick="rem_image(' . $row['sr_no'] . ')" class="btn btn-danger btn-sm shadow-none">
                  <i class="bi bi-trash"></i> Xoá
                </button>
              </div>
            </div>
          </div>';
      } elseif ($row['type'] == 'video') {
          $videoPath = $base_url . 'images/carousel/' . $row['file_name']; // Corrected full URL
          $output .= '<div class="col-md-4 mb-3">
          <div class="card bg-dark text-white">
              <video style="width: 100%" src="' . $videoPath . '" controls></video>
              <div class="card-img-overlay text-end">
                <button type="button" onclick="rem_image(' . $row['sr_no'] . ')" class="btn btn-danger btn-sm shadow-none">
                  <i class="bi bi-trash"></i> Xoá
                </button>
              </div>
            </div>
          </div>';
      }
  }
  echo $output;
}

if (isset($_POST['rem_image'])) {
  $frm_data = filter_input(INPUT_POST, 'rem_image', FILTER_SANITIZE_NUMBER_INT);
  
  // Fetch the file name from the database
  $pre_q = "SELECT * FROM carousel WHERE sr_no=?";
  $stmt = $conn->prepare($pre_q);
  $stmt->bind_param('i', $frm_data);
  $stmt->execute();
  $res = $stmt->get_result();
  $img = $res->fetch_assoc();
  
  if ($img) {
      $file_path = $_SERVER['DOCUMENT_ROOT'] . "/vkhotel/images/carousel/" . $img['file_name'];
      
      // Delete the file from the server
      if (unlink($file_path)) {
          // Delete the record from the database
          $q = "DELETE FROM carousel WHERE sr_no=?";
          $stmt = $conn->prepare($q);
          $stmt->bind_param('i', $frm_data);
          $stmt->execute();
          echo 1; // Return 1 if deletion was successful
      } else {
          echo 0; // Return 0 if the file could not be deleted
      }
  } else {
      echo 0; // Return 0 if the database entry was not found
  }
}



?>
