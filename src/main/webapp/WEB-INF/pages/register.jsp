<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Register</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
    <style>
        body {
            background-color: #1a1a1a;
            color: #000000; /* Black text color */
        }

        .container-fluid {
            padding: 50px;
        }

        .bg-white {
            background-color: #ffffff;
            border-radius: 10px;
            padding: 20px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        h1 {
            color: #007bff;
        }

        label {
            color: #6c757d;
        }

        input[type="text"],
        input[type="number"],
        input[type="password"] {
            width: 100%;
            padding: 8px;
            margin: 8px 0;
            display: inline-block;
            border: 1px solid #ced4da;
            box-sizing: border-box;
            border-radius: 4px;
        }

        input[type="submit"] {
            background-color: #007bff;
            color: white;
            padding: 10px 15px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #0056b3;
        }

        a {
            color: #007bff;
            text-decoration: none;
            margin-top: 10px;
            display: inline-block;
        }

        a:hover {
            text-decoration: underline;
        }

        .form-group {
            margin-bottom: 20px;
        }

        .form-check-label {
            color: #6c757d;
        }

        .form-check-input {
            margin-top: 5px;
        }
    </style>
</head>
<body>
    <div class="container-fluid my-5">
        <div class="row my-5">
            <div class="col-4 my-5"></div>
            <div class="col-4 my-5 bg-white">
                <h1 class="text-center my-5">Register Page</h1>
                <form method="GET" class="mx-3 my-3 " action="register">
                    <label>Name: </label><br>
                    <input type="text" name="name"><br>
                    <label>Age: </label><br>
                    <input type="number" name="age"><br>
                    <label>Email: </label><br>
                    <input type="text" name="username" ><br>
                    <label>Password: </label><br>
                    <input type="password" name="password"><br>
                    <label>Confirm Password: </label><br>
                    <input type="password" name="cpassword"><br>
                    <label>Gender: </label><br>
                    <input type="radio" name="gender" value="Male">Male
                    <input type="radio" value="Female" name="gender">Female<br>
                    <label>Marital Status: </label>
                    <select name="status" id="cars">
                        <option value="Married">Married</option>
                        <option value="Unmarried">Unmarried</option>
                    </select><br>
                    <div class="form-group">
                        <label>Operating System:</label>
                        <div class="form-check">
                            <input type="checkbox" class="form-check-input" id="windows" name="OS" value="windows">
                            <label class="form-check-label" for="windows">Windows</label>
                        </div>
                        <div class="form-check">
                            <input type="checkbox" class="form-check-input" id="mac" name="OS" value="mac">
                            <label class="form-check-label" for="mac">Mac</label>
                        </div>
                        <div class="form-check">
                            <input type="checkbox" class="form-check-input" id="linux" name="OS" value="linux">
                            <label class="form-check-label" for="linux">Linux</label>
                        </div>
                    </div>
                    <input type="submit" value="Register">
                </form>
            </div>
            <div class="col-4"></div>
        </div>
    </div>
</body>
</html>
