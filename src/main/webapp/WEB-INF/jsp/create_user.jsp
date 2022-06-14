<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Crear Usuario</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
</head>

<body>
    <div class="container">
        <h1>Crea usuario</h1>
    </div>

    <form action="" method="POST">
        <c:if test="${error!=null}">
            <div class="alert alert-danger" role="alert">${error}</div>
        </c:if>

        <div class="row">
            <c:if test="${error!=null && (usuario.name==null || usuario.name.length()<=3)}">
                <div class="alert alert-warning" role="alert">El campo usuario es obligatorio</div>
            </c:if>
            <div class="mb-3">
                <input class="form-control" name="user_name" placeholder="escribe tu nombre..." type="text" value="${usuario.name}">
            </div>

            <c:if test="${error!=null && (usuario.email==null || usuario.email.length()<=3)}">
                <div class="alert alert-warning" role="alert">El campo email es obligatorio</div>
            </c:if>
            <div class="mb-3">
                <input type="email" class="form-control" name="user_email" placeholder="indica tu email..." value="${usuario.email}" >
            </div>
            <button class="btn btn-primary">Crear</button>
        </div>

    </form>


</body>

</html>