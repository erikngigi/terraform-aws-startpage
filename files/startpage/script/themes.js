let currentIndex = 0;

const themes = ["naruto", "sasuke", "itachi", "obito", "madara"];

function setTheme() {
  const selector = document.getElementsByClassName("image")[0];
  let savedIndex = localStorage.getItem("themeIndex");

  if (savedIndex !== null) {
    currentIndex = parseInt(savedIndex, 10);
  }

  document.documentElement.className = themes[currentIndex];

  selector.addEventListener("click", () => {
    changeTheme();
  });

  // Change theme every 30 minutes (1800000 milliseconds)
  setInterval(() => {
    changeTheme();
  }, 1800000);
}

function changeTheme() {
  currentIndex = (currentIndex + 1) % themes.length;
  document.documentElement.className = themes[currentIndex];
  localStorage.setItem("themeIndex", currentIndex);
}

setTheme();
