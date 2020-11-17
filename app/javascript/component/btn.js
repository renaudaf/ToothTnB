const btn_accept = document.querySelector('.dropdown-accept');
const btn_deny = document.querySelector('.dropdown-deny');

const updateStatusAccept = () => {
  btn_accept.addEventListener("click", (event) => {
    console.log(event);
  });
}
const updateStatusDeny = () => {
  btn_deny.addEventListener("click", (event) => {
    console.log(event);
  });
}

export { updateStatusAccept, updateStatusDeny };
