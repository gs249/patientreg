<%@include file="topbar.jsp"%>
<script src="<%=request.getContextPath()%>/resources/js/controller/category.js"></script>
<div class="main-content app-content mt-0" ng-controller="categoryctrl">
<div class="side-app">

    <!-- CONTAINER -->
    <div class="main-container container-fluid">

        <!-- PAGE-HEADER -->
        <div class="page-header">
        <h1 class="page-title">Category</h1>
        <div>
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="javascript:void(0)">Category</a></li>
                <li class="breadcrumb-item active" aria-current="page">Category Form</li>
            </ol>
        </div>
    </div>
        <!-- PAGE-HEADER END -->
        <form class="form-horizontal" action="" method="" enctype="multipart/form-data">
       
        <div class="col-md-12 col-xl-12">
            
            <div class="card ">
                <div class="card-header">
                    <h4 class="card-title ">Category Form</h4>
                </div>
                <div class="card-body ">
                   
                    <div class=" row mb-4">
                        <label for="inputName" class="col-md-3 form-label" >Category Name</label>
                        <div class="col-md-9">
                            <input type="text" class="form-control" id="inputName" ng-model="category.name" placeholder="Category Name "
                                name="name"
                                required>
                        </div>
                    </div>
                    <div class="text-right mb-3">
                    <a href="" ng-click="insercategory()" class="btn btn-primary">
                         Add New
                    </a>
                </div>
            </div>
        </div>
        </div>
        </form>
</div>
</div>
</div>


<!-- Country-selector modal-->
<%@include file="footer.jsp"%>
