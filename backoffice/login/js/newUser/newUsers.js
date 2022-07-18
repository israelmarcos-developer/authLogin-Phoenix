const url = "http://localhost:4000/api/users"



function newUser(){
    var construct = JSON.stringify({ 

      firt_name: document.getElementById("firstName").value,
      last_name: document.getElementById("secondName").value,
      email: document.getElementById("newEmail").value,
      password: document.getElementById("password").value,
    })
    console.log(construct)
    
    var config = {
      method: 'post',
      url: 'http://localhost:4000/api/users',
      headers: { 
        'Content-Type': 'application/json'
      },
    };
    
    axios.post(url, construct, config)
    .then(response =>(response) => {
        console.log(response.data)
       })
    .catch(error => console.error(error.response.data))
}
