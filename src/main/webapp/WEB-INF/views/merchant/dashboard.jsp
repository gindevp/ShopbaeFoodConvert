<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<div><link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <link href="https://s3.prod.now.vn/resources/shopee_font/font.css" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.2.0/css/all.min.css"
        integrity="sha384-hWVjflwFxL6sNzntih27bfxkr27PmbbK/iSvJ+a4+0owXq79v+lsFkW54bOGbiDQ" crossorigin="anonymous">
  <link rel="stylesheet" type="text/css"
        href="https://fonts.googleapis.com/css?family=Noto+Sans:400,400i,700,700i&amp;subset=vietnamese">

  <link rel="stylesheet" href="${ pageContext.request.contextPath }/static/css/bootstrap.css">
	
	<div class="dropdown">
  <button style="background-color: #f56043;"  class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
    Type
  </button>
  <div class="dropdown-menu">
    <a class="dropdown-item" href="?type=line">line</a>
	<a class="dropdown-item" href="?type=bar" style="background-color: red">bar</a>
	<a class="dropdown-item" href="?type=radar">radar</a>
	<a class="dropdown-item" href="?type=doughnut" style="background-color: red">doughnut</a>
	
  </div>
</div>
<div>
  <canvas id="myChart"></canvas>
</div>
<body onload="connect()"></body>
<script src="
https://cdn.jsdelivr.net/npm/chart.js@4.2.1/dist/chart.umd.min.js
"></script>


<script>
  const ctx = document.getElementById('myChart');

  new Chart(ctx, {
    type: ${chart},
    data: {
      labels: ${name},
      datasets: [{
        label: 'Lượng hàng đã bán ra trong tháng',
        data: ${num},
        backgroundColor:"#f16464",
        borderColor: "#0196FD",
        borderWidth: 1
        
      },
      {
          label: 'Lượng hàng đã bán ra trong tháng trước',
          data: [13,12,4,24,34,3,6],
          backgroundColor:"#0196FD",
          borderColor: "#f16464",
          borderWidth: 1
          
        }]
    },
    options: {
      scales: {
        y: {
          beginAtZero: true
        }
      }
    }
  });
</script>
 
</div>



	
