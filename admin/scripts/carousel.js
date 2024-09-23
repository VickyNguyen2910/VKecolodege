let carousel_s_form = document.getElementById('carousel_s_form');
let carousel_picture_inp = document.getElementById('carousel_picture_inp');
let carousel_video_inp = document.getElementById('carousel_video_inp');

carousel_s_form.addEventListener('submit', function(e) {
  e.preventDefault();
  if (carousel_picture_inp.files.length > 0) {
      add_image();
  } else if (carousel_video_inp.files.length > 0) {
      add_video();
  }
});

function add_image() {
    let data = new FormData();
    data.append('picture', carousel_picture_inp.files[0]);
    data.append('add_image', '');

    let xhr = new XMLHttpRequest();
    xhr.open("POST", "ajax/carousel_crud.php", true);

    xhr.onload = function() {
        if (this.responseText.includes('success')) {
            alert('success', 'New image uploaded!');
            carousel_picture_inp.value = '';

            // Close the modal after upload
            let modal = bootstrap.Modal.getInstance(document.getElementById('carousel-s'));
            modal.hide();

            get_carousel();
        } else {
            alert('error', this.responseText);
        }
    }

    xhr.send(data);
}

function add_video() {
    let data = new FormData();
    data.append('video', carousel_video_inp.files[0]);
    data.append('add_video', '');

    let xhr = new XMLHttpRequest();
    xhr.open("POST", "ajax/carousel_crud.php", true);

    xhr.onload = function() {
        if (this.responseText.includes('success')) {
            alert('success', 'New video uploaded!');
            carousel_video_inp.value = '';

            // Close the modal after upload
            let modal = bootstrap.Modal.getInstance(document.getElementById('carousel-s'));
            modal.hide();

            get_carousel();
        } else {
            alert('error', this.responseText);
        }
    }

    xhr.send(data);
}

function get_carousel() {
    let xhr = new XMLHttpRequest();
    xhr.open("POST", "ajax/carousel_crud.php", true);
    xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');

    xhr.onload = function() {
        document.getElementById('carousel-data').innerHTML = this.responseText;
    }

    xhr.send('get_carousel');
}

// Call this function on page load to populate the carousel
window.onload = function() {
    get_carousel();
}

function rem_image(id) {
  if (!confirm("Are you sure you want to delete this item?")) return;

  let xhr = new XMLHttpRequest();
  xhr.open("POST", "ajax/carousel_crud.php", true);
  xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");

  xhr.onload = function () {
      let customAlertDiv = document.querySelector('.custom-alert');
      console.log("Response: ", this.responseText); // Debugging line
      if (this.status == 200) {
          if (this.responseText == "1") {
              customAlertDiv.innerHTML = "Image/Video removed successfully!";
              customAlertDiv.style.display = "block"; // Show alert
              setTimeout(function () {
                  customAlertDiv.style.display = "none"; // Hide alert after 3 seconds
              }, 3000);
              get_carousel(); // Refresh the carousel after deletion
          } else {
              customAlertDiv.innerHTML = "Failed to remove the item.";
              customAlertDiv.style.display = "block"; // Show alert
              setTimeout(function () {
                  customAlertDiv.style.display = "none"; // Hide alert after 3 seconds
              }, 3000);
          }
      } else {
          customAlertDiv.innerHTML = "Request failed. Status: " + this.status;
          customAlertDiv.style.display = "block"; // Show alert
          setTimeout(function () {
              customAlertDiv.style.display = "none"; // Hide alert after 3 seconds
          }, 3000);
      }
  };

  xhr.onerror = function () {
      let customAlertDiv = document.querySelector('.custom-alert');
      customAlertDiv.innerHTML = "An error occurred during the request.";
      customAlertDiv.style.display = "block"; // Show alert
      setTimeout(function () {
          customAlertDiv.style.display = "none"; // Hide alert after 3 seconds
      }, 3000);
  };

  xhr.send("rem_image=" + id);
}
