<div>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/3.5.1/chart.min.js"></script>

  <script type="text/javascript">
    function drawChart() {
      var stars = [135850, 52122, 148825, 16939, 9763];
      var frameworks = ['React', 'Angular', 'Vue', 'Hyperapp', 'Omi'];
      new Chart('myChart', {
        type: 'bar',
        data: {
          labels: frameworks,
          datasets: [{
            label: 'Product',
            data: stars
          }]
        },
      });
    }
  </script>
</div>

<body onload="drawChart()">
  <canvas id="myChart" width="800" height="400"></canvas>
</body>