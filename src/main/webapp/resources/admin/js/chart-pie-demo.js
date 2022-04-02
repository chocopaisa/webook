// Set new default font family and font color to mimic Bootstrap's default styling
Chart.defaults.global.defaultFontFamily = '-apple-system,system-ui,BlinkMacSystemFont,"Segoe UI",Roboto,"Helvetica Neue",Arial,sans-serif';
Chart.defaults.global.defaultFontColor = '#292b2c';

// 카테고리별 매출
var ctx = document.getElementById("myPieChart");
var myPieChart = new Chart(ctx, {
  type: 'pie',
  data: {
    labels: ["자기계발", "시/에세이", "과학", "역사/문화","컴퓨터/IT"],
    datasets: [{
      data: [12.9, 25.5, 11.5, 8.3, 9.5 ],
      backgroundColor: ['#007bff', '#dc3545', '#ffc107', '#28a745','#800080'],
    }],
  },
});

// 연령대 별 매출
var ctx = document.getElementById("myPieChartt");
var myPieChart = new Chart(ctx, {
  type: 'pie',
  data: {
    labels: ["10대", "20대", "30대", "40대","50대","60대이상"],
    datasets: [{
      data: [12.9, 25.5, 11.5, 8.3, 9.5,2.5 ],
      backgroundColor: ['#007bff', '#dc3545', '#ffc107', '#28a745','#800080','#FF8C00'],
    }],
  },
});
