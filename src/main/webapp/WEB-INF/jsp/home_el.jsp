<html>

<head>
    <title>Gatitos app</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
    <link rel="stylesheet" href="./css/styles.css">
</head>

<body>
    <div class="container">
        <h2>Hello HOME EL!</h2>

        <a href="./users/add">Ir a Crear usuario</a>

        <p>
            ${unMensaje}
        </p>

        <div><img src="./imgs/gatito.jpg" alt="" s=""></div>

        <ul>
            <li>Id: ${unUsuario.id}</li>
            <li>Nombre: ${unUsuario.name}</li>
            <li>Email: ${unUsuario.email}</li>
        </ul>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>

</body>

</html>