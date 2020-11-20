const toothbrushCount = () => {
  const count = document.querySelector('#count_number');
  if (count != null) {
    const intervalId = setInterval(() => {
      fetch('toothbrushes/count')
      .then(response => response.json())
      .then((data) => {
        count.innerText = data.count
      });

    }, 1000);
    document.addEventListener('turbolinks:before-visit', () => {
      clearInterval(intervalId);
    }, {once: true});
  }
}

export { toothbrushCount }
