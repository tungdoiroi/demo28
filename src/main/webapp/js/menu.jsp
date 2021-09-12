<%@ page contentType="text/html;charset=UTF-8" language="java" %>



<nav class="navbar navbar-expand-lg navbar-dark mau " >
    <div class="container" >
        <a class="navbar-brand" href="#">LOVE</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent" >
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
               <c:if test="${sessionScope.acc.isAdmin == 1}">
                <li class="nav-item">

                    <a class="nav-link active" aria-current="page" href="#">Home</a>
                </li>
                <li class="nav-item">

                    <a class="nav-link" href="#">Hot</a>
                </li>

                <li class="nav-item">

                    <a class="nav-link" href="#">Trending</a>
                </li>
               </c:if>
                <c:if test="${sessionScope.acc != null}">
                    <li class="nav-item">
                        <a class="nav-link" href="#">Hello ${sessionScope.acc.user}</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="logout">Logout</a>
                    </li>
                </c:if>
                <c:if test="${sessionScope.acc == null}">
                    <li class="nav-item">
                        <a class="nav-link" href="Login.jsp">Login</a>
                    </li>
                </c:if>
            </ul>

                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                        Genres
                    </a>

                    <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <li><a class="dropdown-item" href="#">Action</a></li>
                        <li><a class="dropdown-item" href="#">Another action</a></li>
                        <li><hr class="dropdown-divider"></li>
                        <li><a class="dropdown-item" href="#">Something else here</a></li>
                    </ul>
                </li>
<%--           tung     thêm--%>
            </ul>
<%--o search--%>
            <form action ="search"method="post" class="form-inline my-2 my-lg-0">
                <div class="input-group input-group-sm">
                    <input name="txt" type="text" class="form-control" aria-label="Small" aria-describedby="inputGroup-sizing-sm" placeholder="Search...">
                    <div class ="input-group-append">
                        <button type="submit" class="btn btn-seconday btn number">
                            <i class="fa fa-search"></i>
                        </button>
                    </div>

                </div>
                <a class="btn btn-success btn-sm ml-3" href="show">
                    <i class="fa fa-shoping-cart"></i> Cart
                    <span class="badge badge-light">3</span>
                </a>
            </form>
<%--            --%>
        </div>
    </div>





            </ul>
            <form class="d-flex" style="margin-top: 1px; margin-bottom: 1px;" >
                <button class="btn hover" type="submit"><span><img src="../assets/shopping-cart.png" style="width: 25px; margin-right: 10px"></span></button>

            </form>
        </div>
    </div>
</nav>
<section class="jumbotron text-center">
    <div class="container">
        <h1 class="jumbotron-heading">
        </h1>
        <p class="lead text-muted mb-0">
    </div>
</section>
