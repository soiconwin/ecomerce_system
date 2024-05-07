//<!doctype html>
//<html lang="en" xmlns:th="http://www.thymeleaf.org"
//      xmlns:sec="http://www.thymeleaf.org/thymeleaf-extras-springsecurity3">
//<head>
//<link th:href="@{/css/style.css}" rel="stylesheet">
//   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
//<script
//	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
//	integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
//	crossorigin="anonymous"></script>
//    <title>Document</title>
//</head>
//<body>
//<th:block th:include="/headershop"></th:block>
//
//<div class="container-fluid" style="margin-top: 30px">
//    <div class="row">
//        <div class="col-sm-2">
//            <h4>Categories</h4>
//            <ul class="list-group">
//                <a th:href="@{/shop}">
//                <li class="list-group-item">All Products</li>
//                </a>
//                <a href="" th:each="category, iStat : ${categories}"
//                   th:href="@{/shop/category/{id}(id=${category.id})}">
//                   <li class="list-group-item" th:text="${category.name}">
//                    </li>
//                    </a>
//            </ul>
//        </div>
//        <div id="btnContainer">
//  			<button class="btn" onclick="listView()"><i class="fa fa-bars"></i> List</button> 
//  			<button class="btn active" onclick="gridView()"><i class="fa fa-th-large"></i> Grid</button>
//		</div>
//		
//        <div class="row" >
//            <div class="column" style="background-color:#ddd;" th:each="product : ${products}" >
//                <div class="row ">
//                    <div class="row">
//                    <a href="#" th:href="@{/shop/viewproduct/{id}(id=${product.id})}" >
//                    <img class="" height="100px" width="100px" th:src="@{${'/productImages/' + product.imageName}}" th:alt="${product.name}" ></a>
//                        
//                    </div>
//                    <div class="row">
//                        <div class="column" style="background-color:#ddd;" width="100px">
//                            <h5 class="card-title" th:text="${product.name}"></h5>
//                            <h4>$ <span th:text="${product.price}"></span></h4>
//                            <a href="" th:href="@{/addToCart/{id}(id = ${product.id})}" class="btn btn-success">Add to cart</a>
//                        </div>
//                    </div>
//                </div>
//            </div>
//        </div>
//    </div>
//</div>
//
//<script>
//// Get the elements with class="column"
//var elements = document.getElementsByClassName("column");
//
//// Declare a loop variable
//var i;
//
//// List View
//function listView() {
//  for (i = 0; i < elements.length; i++) {
//    elements[i].style.width = "100%";
//  }
//}
//
//// Grid View
//function gridView() {
//  for (i = 0; i < elements.length; i++) {
//    elements[i].style.width = "25%";
//  }
//}
//
///* Optional: Add active class to the current button (highlight it) */
//var container = document.getElementById("btnContainer");
//var btns = container.getElementsByClassName("btn");
//for (var i = 0; i < btns.length; i++) {
//  btns[i].addEventListener("click", function() {
//    var current = document.getElementsByClassName("active");
//    current[0].className = current[0].className.replace(" active", "");
//    this.className += " active";
//  });
//}
//</script>
//
//
//
//
//<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
//<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
//<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
//</body>
//</html>