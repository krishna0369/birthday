<!DOCTYPE html>
<html>
<head>
  <link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
  <div class="countdown">
    <h1>Countdown to Your Birthday Wishes:</h1>
    <div id="timer">
      <span id="days"></span> days
      <span id="hours"></span> hours
      <span id="minutes"></span> minutes
      <span id="seconds"></span> seconds
    </div>
  </div>

  <script src="script.js"></script>
</body>
</html>
body {
  font-family: Arial, sans-serif;
  text-align: center;
}

.countdown {
  margin: 50px;
}

h1 {
  font-size: 24px;
}

#timer {
  font-size: 32px;
}

function updateCountdown() {
  const targetDate = new Date('YYYY-MM-DDT00:00:00'); // Replace 'YYYY-MM-DD' with the target date

  const currentDate = new Date();
  const timeRemaining = targetDate - currentDate;

  const days = Math.floor(timeRemaining / (1000 * 60 * 60 * 24));
  const hours = Math.floor((timeRemaining % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
  const minutes = Math.floor((timeRemaining % (1000 * 60 * 60)) / (1000 * 60));
  const seconds = Math.floor((timeRemaining % (1000 * 60)) / 1000);

  document.getElementById('days').textContent = days;
  document.getElementById('hours').textContent = hours;
  document.getElementById('minutes').textContent = minutes;
  document.getElementById('seconds').textContent = seconds;
}

setInterval(updateCountdown, 1000); // Update the countdown every second
updateCountdown();
