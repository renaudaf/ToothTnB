const updateStatusAccept = () => {
  const btn_accept = document.querySelector('.dropdown-accept');
  if (btn_accept) {
    btn_accept.addEventListener("click", (event) => {
      console.log(event);
    });
  } 
}


const updateStatusDeny = () => {
  const btn_deny = document.querySelector('.dropdown-deny');
  if (btn_deny) {
    btn_deny.addEventListener("click", (event) => {
      console.log(event);
    });
  }
}



export { updateStatusAccept, updateStatusDeny };
