<%@include file="topbar.jsp"%>
<script src="<%=request.getContextPath()%>/resources/js/controller/patient.js"></script>

<div class="main-content app-content mt-0"  ng-controller="patientctrl" ng-init="getallcategory()">
<div class="side-app">

    <!-- CONTAINER -->
    <div class="main-container container-fluid">

        <!-- PAGE-HEADER -->
        <div class="page-header">
        <h1 class="page-title">Patient</h1>
        <div>
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="javascript:void(0)">Patient</a></li>
                <li class="breadcrumb-item active" aria-current="page">Patient Form</li>
            </ol>
        </div>

    </div>
        <!-- PAGE-HEADER END -->
        
        <!-- start form-->
        <form class="form-horizontal" action=""  enctype="">
       
        <div class="col-md-12 col-xl-12">
          
            <div class="card">
                <div class="card-header">
                    <h4 class="card-title">Patient Form</h4>
                </div>
                <div class="card-body">
                 
                    <div class=" row mb-4">
                        <label for="name" class="col-md-3 form-label">Name</label>
                        <div class="col-md-9">
                            <input type="text" class="form-control" id="name" ng-model="patient.name" placeholder="Patient Name"
                                autocomplete="name" name="name"
                                value=" " required>
                        </div>
                    </div>
                    <div class=" row mb-4">
                        <label for="age" class="col-md-3 form-label">Age</label>
                        <div class="col-md-9">
                            <input type="text" class="form-control input-number" maxlength="3" id="age" ng-model="patient.age" placeholder="Patient Age"
                                autocomplete="age" name="age"
                               value=""
                                required>
                        </div>
                    </div>
                    <div class=" row mb-4">
                        <label for="inputName" class="col-md-3 form-label">Gender</label>
                        <div class="col-md-9">
                            <label class="custom-control custom-radio">
                                <input type="radio" class="custom-control-input" name="gender" ng-model="patient.gender" value="male" >
                                <span class="custom-control-label">Male</span>
                            </label>
                            <label class="custom-control custom-radio">
                                <input type="radio" class="custom-control-input" name="gender" ng-model="patient.gender" value="female" >
                                <span class="custom-control-label">Female</span>
                            </label>
                            <label class="custom-control custom-radio">
                                <input type="radio" class="custom-control-input" name="gender" ng-model="patient.gender" value="other" >
                                <span class="custom-control-label">Other</span>
                            </label>
                        </div>
                    </div>
                    <div class=" row mb-4">
                        <label for="diagnosis" class="col-md-3 form-label">Diagnosis</label>
                        <div class="col-md-9">
                            <input type="text" class="form-control" id="diagnosis" placeholder="Patient Diagnosis"
                                autocomplete="diagnosis" name="diagnosis"
                                value="" ng-model="patient.diagnosis"
                                required>
                        </div>
                    </div>
                    <div class=" row mb-4">
                        <label for="hospital_no" class="col-md-3 form-label">Hospital No</label>
                        <div class="col-md-9">
                            <input type="text" class="form-control" id="hospital_no" ng-model="patient.hospital_no" placeholder="Patient Hospital No" autocomplete="hospital_no" name="hospital_no" value="" required>
                        </div>
                    </div>
                    <div class=" row mb-4">
                        <label for="address" class="col-md-3 form-label">Address</label>
                        <div class="col-md-9">
                            <textarea class="form-control mb-4" rows="4" id="address" ng-model="patient.address" placeholder="Patient Address" name="address" required></textarea>
                        </div>
                    </div>
                    <div class=" row mb-4">
                        <label for="Template" class="col-md-3 form-label">Template</label>
                        <div class="col-md-9">
                            <select name="template_id" id="Template" class="form-control form-select select2" ng-model="patient.template_id"
                            		ng-options="item.id as item.name for item in category"
                            data-bs-placeholder="Select Template" required>
                                <option value="">-- Select Template --</option>
                                
                            </select>
                        </div>
                    </div>
                    <button type="submit" class="btn btn-primary mt-4 mb-0" ng-click="insertpatient()">Create</button>
                </div>
            </div>
        </div>
    </form>
        <!-- end form-->

</div>
</div>
</div>

<link id="theme" rel="stylesheet" type="text/css" media="all" href="<%=request.getContextPath()%>/resources/colors/color1.css" />
<style type="text/css">
    .d-flex{
        gap:20px;
    }
</style>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"
integrity="sha512-uto9mlQzrs59VwILcLiRYeLKPPbS/bT71da/OEBYEwcdNUk8jYIy+D176RYoop1Da+f9mvkYrmj5MCLZWEtQuA=="
crossorigin="anonymous" referrerpolicy="no-referrer"></script>

<script type="text/javascript">
$(document).ready(function() {
    
});
</script>
<%@include file="footer.jsp"%>