<%@include file="topbar.jsp"%>
<script src="<%=request.getContextPath()%>/resources/js/controller/category.js"></script>

<div class="main-content app-content mt-0"  ng-controller="categoryctrl">
<div class="side-app">

    <!-- CONTAINER -->
    <div class="main-container container-fluid">

        <!-- PAGE-HEADER -->
        <div class="page-header">
            <h1 class="page-title">Registry</h1>
            <div>
                <ol class="breadcrumb">
               <li class="breadcrumb-item"><a href="javascript:void(0)">Categories</a></li>
                <li class="breadcrumb-item active" aria-current="page">Categories</li>
                </ol>
            </div>
        </div>
        <!-- PAGE-HEADER END -->

        <div class="text-right mb-3">
        <a href="addcategory" class="btn btn-primary">
             Add New
        </a>
    </div>
    
    <div class="row row-sm">
    <div class="col-lg-12">
        <div class="card">
            <div class="card-header">
                <h3 class="card-title">Categories</h3>
            </div>
            <div class="card-body">
                <div class="table-responsive">
                    <table class="table table-bordered text-nowrap border-bottom" id="responsive-datatable">
                        <thead>
                            <tr>
                                <th class="wd-15p border-bottom-0">No.</th>
                                <th class="wd-25p border-bottom-0">Name</th>
                                <th class="wd-15p border-bottom-0">Action</th>
                            </tr>
                        </thead>
                        <tbody>
                          
                                <tr class="text-center" ng-show="data!=null">
                                    <td colspan="5"> No Data Found </td>
                                <tr>
                          
                                <tr ng-repeat="data in category">
                                    <td>{{$index+1}}</td>
                                    <td>{{data.name}}</td>
                                    <td class="d-flex">
                                        <a href="" class='btn btn-primary shadow btn-sm  me-3 ml-2' title='Edit' ng-click="redirectbyid(id)">
                                            <i class='fa fa-pencil'></i>
                                        </a>
                                        <form action="#" method="POST">
                                           
                                            <button class='btn btn-danger shadow btn-sm  me-3 ml-2' ng-click="delete(data.id)">
                                                <i class="fa fa-trash"></i>
                                            </button>
                                        </form>
                                    </td>
                                </tr>
                              
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>
</div>
</div>
</div>

<!-- Country-selector modal-->
<%@include file="footer.jsp"%>
