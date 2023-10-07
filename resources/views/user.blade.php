<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <title>IWI</title>

        <!-- Fonts -->
        <link href="https://fonts.googleapis.com/css2?family=Nunito:wght@200;600&display=swap" rel="stylesheet">
        <script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    </head>
    <body>
        <div class="flex-center position-ref full-height">
            <div class="container">
              <h3>User Data</h3>
              <button onclick="download()" class="btn btn-primary">Download File</button>
              <table id="myTable" class="table table-striped">
              <thead>
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Email</th>
                    <th>Created At</th>
                </tr>
              </thead>
              <tbody>
                  <!-- User data will be inserted here using jQuery -->
              </tbody>
              </table>
          </div>
        </div>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.29.1/moment.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
        <script type='text/javascript'>
          let data;
          $(document).ready(function() {
            $.ajax({
              url: "{{ route('user-all')}}",
              success: function( result ) {
                const tableBody = $("#myTable tbody");
                data = result.data;
                console.log('data', data);
                data.forEach(function (user) {
                  const created = moment(user.created_at).format("YYYY-MM-DD HH:mm:ss");
                  const row = $("<tr>");
                  row.append($("<td>").text(user.id));
                  row.append($("<td>").text(user.name));
                  row.append($("<td>").text(user.email));
                  row.append($("<td>").text(created));
                  tableBody.append(row);
                });
              }
            });
          });

          function download(){
            $.ajax({
              url: '{{ route("create-file") }}',
              method: 'POST',
              data: {
                  _token: '{{ csrf_token() }}', // Include CSRF token for Laravel
                  userData: data // Pass the 'userData' array
              },
              success: function(response) {
                // Check if the response contains a fileDownloadUrl
                if (response.fileDownloadUrl) {
                    // Create a hidden anchor element
                    var downloadLink = document.createElement('a');
                    downloadLink.href = response.fileDownloadUrl;
                    downloadLink.download = '{{ date("d-m-Y") }}'+'.csv'; // Set the desired filename

                    // Trigger a click event on the anchor element to initiate the download
                    downloadLink.click();
                } else {
                    // Handle the case where the fileDownloadUrl is missing
                    console.error('File download URL not found in the response');
                }
              },
              error: function(xhr, status, error) {
                  // Handle any errors that occur during the AJAX request
                  console.error(xhr.responseText);
              }
            });
          }
        </script>

    </body>
</html>