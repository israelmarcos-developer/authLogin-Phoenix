
const url = "http://localhost:4000/api/session/new"


function authLogin(){
    axios.post(url, {
        email: document.getElementById("email").value,
        password: document.getElementById("password").value,
    })
    .then(response =>{
        console.log(response.token)
        window.localStorage.setItem('acessToken', response.token)
        window.localStorage.setItem('user', response)
        if (window.localStorage.getItem('acessToken', response.token)){
            window.location.href = "/"
        }else{
            window.location.href = "/login"
        }
    })
    .catch(error => console.error(error))
}

