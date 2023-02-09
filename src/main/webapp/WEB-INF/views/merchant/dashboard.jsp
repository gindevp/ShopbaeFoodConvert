<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/3.5.1/chart.min.js"></script>
<link rel="stylesheet" href="${ pageContext.request.contextPath }/static/css/bootstrap.css">

  <script type="text/javascript">
    function drawChart() {
      new Chart('myChart', {
        type: 'bar',
        data: {
          labels: ${name},
          datasets: [{
            label: 'Product',
            data: ${num}
          }]
        },
      });
    }
  </script>
</div>

<body onload="drawChart()">
  <canvas id="myChart" width="800" height="400"></canvas>
</body>