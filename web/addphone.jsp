<%--
  Created by IntelliJ IDEA.
  User: Daotu
  Date: 14/06/2019
  Time: 9:48 SA
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add Phone</title>
</head>
<jsp:include page="include.jsp"/>

<body>
<div class="container ">
    <div class="row">
        <div class="col-12">
            <form class="needs-validation" novalidate>
                <h1>Add Phone</h1>
                <div class="row">
                    <div class="col-6">
                        <div class="form-group ">
                            <label for="NamePhone">Name</label>
                            <input type="text" class="form-control" name="namePhone" id="NamePhone"
                                   placeholder="Enter name phone" required
                            >
                            <div class="invalid-feedback">
                                Please enter name
                            </div>
                        </div>

                        <div class="form-group ">

                            <label for="BrandPhone">Brand Phone</label>

                            <select class="form-control" name="brandPhone" id="BrandPhone" required>
                                <option value="" disabled selected>Choice...</option>
                                <option value="apple">Apple</option>
                                <option value="samsung">Samsung</option>
                                <option value="nokia">Nokia</option>
                                <option value="other">Others</option>
                            </select>
                            <div class="invalid-feedback">
                                Please choice brand
                            </div>
                        </div>
                        <div class="form-group ">
                            <label for="PricePhone">Price Phone</label>
                            <input type="text" class="form-control" name="pricePhone" id="PricePhone"
                                   placeholder="Enter price phone" required>
                            <div class="invalid-feedback">
                                Please enter price
                            </div>
                        </div>
                        <div class="form-group ">
                            <label for="DescriptionPhone">Description Phone</label>
                            <input type="text" class="form-control" name="descriptionPhone" id="DescriptionPhone"
                                   placeholder="Enter content selector" required>
                            <div class="invalid-feedback">
                                Please enter description
                            </div>
                        </div>
                    </div>
                    <div class="col-6">

                    </div>
                </div>


                <button id="btnSave" class="btn btn-primary" type="submit">Submit</button>
                <button type="reset" class="btn btn-dark ">Reset</button>
                <button id="btnGo" type="button" class="btn btn-primary ">List Phone</button>


            </form>
        </div>


    </div>
</div>
<script>
    $('#btnGo').click(function () {
        location.href = '/listphone';
    });
    (function() {
        window.addEventListener('load', function() {
            var forms = document.getElementsByClassName('needs-validation');
            var validation = Array.prototype.filter.call(forms, function(form) {
                form.addEventListener('submit', function(event) {
                    if (form.checkValidity() === false) {
                        event.preventDefault();
                        event.stopPropagation();
                    }
                    form.classList.add('was-validated');
                }, false);
            });
            console.log(validation);


        }, false);


    })( $('#btnSave').click(function () {
        var dataToSend = {
            name: $('[name="namePhone"]').val(),
            brand: $('[name="brandPhone"]').val(),
            price: $('[name="pricePhone"]').val(),
            description: $('[name="descriptionPhone"]').val(),
            status: 1
        };
        console.log(dataToSend);
        $.ajax({
            url: "/addphone",
            method: "POST",
            data: JSON.stringify(dataToSend),
            success: function (data, status, xhr) {
            alert("Success !!!");

            }
        })
    }));


</script>
</body>
</html>