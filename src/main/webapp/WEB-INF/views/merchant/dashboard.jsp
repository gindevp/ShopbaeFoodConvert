<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
  <link rel="stylesheet" href="${ pageContext.request.contextPath }/static/css/bootstrap.css">
	
<!-- 	<div class="dropdown">
  <button style="background-color: #f56043;"  class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
    Type
  </button>
  <div class="dropdown-menu">
    <a class="dropdown-item" href="?type=line">line</a>
	<a class="dropdown-item" href="?type=bar" style="background-color: red">bar</a>
	<a class="dropdown-item" href="?type=radar">radar</a>
	<a class="dropdown-item" href="?type=doughnut" style="background-color: red">doughnut</a>
	
  </div>
</div> -->
<div class="btn-group">

    
    
    <div class="btn btn-danger dropdown-toggle dropdown-toggle-split"  data-toggle="dropdown" ><svg xmlns="http://www.w3.org/2000/svg" width="22" height="22" fill="currentColor" class="bi bi-box-fill" viewBox="0 0 16 16">
  <path fill-rule="evenodd" d="M15.528 2.973a.75.75 0 0 1 .472.696v8.662a.75.75 0 0 1-.472.696l-7.25 2.9a.75.75 0 0 1-.557 0l-7.25-2.9A.75.75 0 0 1 0 12.331V3.669a.75.75 0 0 1 .471-.696L7.443.184l.004-.001.274-.11a.75.75 0 0 1 .558 0l.274.11.004.001 6.971 2.789Zm-1.374.527L8 5.962 1.846 3.5 1 3.839v.4l6.5 2.6v7.922l.5.2.5-.2V6.84l6.5-2.6v-.4l-.846-.339Z"/>
</svg> Type  </div>

    <div class="dropdown-menu" >
        <a class="dropdown-item" href="?type=line"><svg xmlns="http://www.w3.org/2000/svg" width="22" height="22" fill="currentColor" class="bi bi-activity" viewBox="0 0 16 16">
  <path fill-rule="evenodd" d="M6 2a.5.5 0 0 1 .47.33L10 12.036l1.53-4.208A.5.5 0 0 1 12 7.5h3.5a.5.5 0 0 1 0 1h-3.15l-1.88 5.17a.5.5 0 0 1-.94 0L6 3.964 4.47 8.171A.5.5 0 0 1 4 8.5H.5a.5.5 0 0 1 0-1h3.15l1.88-5.17A.5.5 0 0 1 6 2Z"/>
</svg> line</a>        <div class="dropdown-divider"></div>
        <a class="dropdown-item" href="?type=bar"><svg xmlns="http://www.w3.org/2000/svg" width="22" height="22" fill="currentColor" class="bi bi-bar-chart-line-fill" viewBox="0 0 16 16">
  <path d="M11 2a1 1 0 0 1 1-1h2a1 1 0 0 1 1 1v12h.5a.5.5 0 0 1 0 1H.5a.5.5 0 0 1 0-1H1v-3a1 1 0 0 1 1-1h2a1 1 0 0 1 1 1v3h1V7a1 1 0 0 1 1-1h2a1 1 0 0 1 1 1v7h1V2z"/>
</svg> bar</a>
        <div class="dropdown-divider"></div>
        <a class="dropdown-item" href="?type=radar"><svg xmlns="http://www.w3.org/2000/svg" width="22" height="22" fill="currentColor" class="bi bi-broadcast" viewBox="0 0 16 16">
  <path d="M3.05 3.05a7 7 0 0 0 0 9.9.5.5 0 0 1-.707.707 8 8 0 0 1 0-11.314.5.5 0 0 1 .707.707zm2.122 2.122a4 4 0 0 0 0 5.656.5.5 0 1 1-.708.708 5 5 0 0 1 0-7.072.5.5 0 0 1 .708.708zm5.656-.708a.5.5 0 0 1 .708 0 5 5 0 0 1 0 7.072.5.5 0 1 1-.708-.708 4 4 0 0 0 0-5.656.5.5 0 0 1 0-.708zm2.122-2.12a.5.5 0 0 1 .707 0 8 8 0 0 1 0 11.313.5.5 0 0 1-.707-.707 7 7 0 0 0 0-9.9.5.5 0 0 1 0-.707zM10 8a2 2 0 1 1-4 0 2 2 0 0 1 4 0z"/>
</svg> radar</a>
                <div class="dropdown-divider"></div>
                <a class="dropdown-item" href="?type=doughnut"><svg xmlns="http://www.w3.org/2000/svg" width="22" height="22" fill="currentColor" class="bi bi-radioactive" viewBox="0 0 16 16">
  <path d="M8 1a7 7 0 1 0 0 14A7 7 0 0 0 8 1ZM0 8a8 8 0 1 1 16 0A8 8 0 0 1 0 8Z"/>
  <path d="M9.653 5.496A2.986 2.986 0 0 0 8 5c-.61 0-1.179.183-1.653.496L4.694 2.992A5.972 5.972 0 0 1 8 2c1.222 0 2.358.365 3.306.992L9.653 5.496Zm1.342 2.324a2.986 2.986 0 0 1-.884 2.312 3.01 3.01 0 0 1-.769.552l1.342 2.683c.57-.286 1.09-.66 1.538-1.103a5.986 5.986 0 0 0 1.767-4.624l-2.994.18Zm-5.679 5.548 1.342-2.684A3 3 0 0 1 5.005 7.82l-2.994-.18a6 6 0 0 0 3.306 5.728ZM10 8a2 2 0 1 1-4 0 2 2 0 0 1 4 0Z"/>
</svg> doughnut</a>
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
        backgroundColor:["#f16464","#0196FD","#F5DEB3","#87CEEB","#FFB6C1","#32CD32","#808080"],
        borderColor: "#0196FD",
        borderWidth: 1
        
      },
      {
          label: 'Lượng hàng đã bán ra trong tháng trước',
          data: [13,12,4,24,34,3,6],
          backgroundColor:["#f16464","#0196FD","#F5DEB3","#87CEEB","#FFB6C1","#32CD32","#808080"],
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



	
