<%@include file="topbar.jsp"%>

<div class="main-content app-content mt-0">
<div class="side-app">

    <!-- CONTAINER -->
    <div class="main-container container-fluid">

        <!-- PAGE-HEADER -->
        <div class="page-header">
            <h1 class="page-title">Dashboard 01</h1>
            <div>
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="javascript:void(0)">Home</a></li>
                    <li class="breadcrumb-item active" aria-current="page">Dashboard 01</li>
                </ol>
            </div>
        </div>
        <!-- PAGE-HEADER END -->

        <!-- ROW-1 -->
        <div class="row">
            <div class="col-lg-12 col-md-12 col-sm-12 col-xl-12">
                <div class="row">
                    <div class="col-lg-6 col-md-6 col-sm-12 col-xl-3">
                        <div class="card overflow-hidden">
                            <div class="card-body">
                                <div class="d-flex">
                                    <div class="mt-2">
                                        <h6 class="">Total Users</h6>
                                        <h2 class="mb-0 number-font">44,278</h2>
                                    </div>
                                    <div class="ms-auto">
                                        <div class="chart-wrapper mt-1">
                                            <canvas id="saleschart"
                                                class="h-8 w-9 chart-dropshadow"></canvas>
                                        </div>
                                    </div>
                                </div>
                                <span class="text-muted fs-12"><span class="text-secondary"><i
                                            class="fe fe-arrow-up-circle  text-secondary"></i> 5%</span>
                                    Last week</span>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-6 col-sm-12 col-xl-3">
                        <div class="card overflow-hidden">
                            <div class="card-body">
                                <div class="d-flex">
                                    <div class="mt-2">
                                        <h6 class="">Total Profit</h6>
                                        <h2 class="mb-0 number-font">67,987</h2>
                                    </div>
                                    <div class="ms-auto">
                                        <div class="chart-wrapper mt-1">
                                            <canvas id="leadschart"
                                                class="h-8 w-9 chart-dropshadow"></canvas>
                                        </div>
                                    </div>
                                </div>
                                <span class="text-muted fs-12"><span class="text-pink"><i
                                            class="fe fe-arrow-down-circle text-pink"></i> 0.75%</span>
                                    Last 6 days</span>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-6 col-sm-12 col-xl-3">
                        <div class="card overflow-hidden">
                            <div class="card-body">
                                <div class="d-flex">
                                    <div class="mt-2">
                                        <h6 class="">Total Expenses</h6>
                                        <h2 class="mb-0 number-font">$76,965</h2>
                                    </div>
                                    <div class="ms-auto">
                                        <div class="chart-wrapper mt-1">
                                            <canvas id="profitchart"
                                                class="h-8 w-9 chart-dropshadow"></canvas>
                                        </div>
                                    </div>
                                </div>
                                <span class="text-muted fs-12"><span class="text-green"><i
                                            class="fe fe-arrow-up-circle text-green"></i> 0.9%</span>
                                    Last 9 days</span>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-6 col-sm-12 col-xl-3">
                        <div class="card overflow-hidden">
                            <div class="card-body">
                                <div class="d-flex">
                                    <div class="mt-2">
                                        <h6 class="">Total Cost</h6>
                                        <h2 class="mb-0 number-font">$59,765</h2>
                                    </div>
                                    <div class="ms-auto">
                                        <div class="chart-wrapper mt-1">
                                            <canvas id="costchart"
                                                class="h-8 w-9 chart-dropshadow"></canvas>
                                        </div>
                                    </div>
                                </div>
                                <span class="text-muted fs-12"><span class="text-warning"><i
                                            class="fe fe-arrow-up-circle text-warning"></i> 0.6%</span>
                                    Last year</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- ROW-1 END -->

        <!-- ROW-2 -->
       
      
    </div>
    <!-- CONTAINER END -->
</div>
</div>
<!--app-content close-->


<!-- </div> -->
<!-- Sidebar-right -->

<!--/Sidebar-right-->

<!-- Country-selector modal-->
<div class="modal fade" id="country-selector">
<div class="modal-dialog modal-dialog-centered" role="document">
<div class="modal-content country-select-modal">
    <div class="modal-header">
        <h6 class="modal-title">Choose Country</h6><button aria-label="Close" class="btn-close"
            data-bs-dismiss="modal" type="button"><span aria-hidden="true">×</span></button>
    </div>
    <div class="modal-body">
        <ul class="row p-3">
            <li class="col-lg-6 mb-2">
                <a href="javascript:void(0)" class="btn btn-country btn-lg btn-block active">
                    <span class="country-selector"><img alt="" src="../assets/images/flags/us_flag.jpg"
                            class="me-3 language"></span>USA
                </a>
            </li>
            <li class="col-lg-6 mb-2">
                <a href="javascript:void(0)" class="btn btn-country btn-lg btn-block">
                    <span class="country-selector"><img alt=""
                        src="../assets/images/flags/italy_flag.jpg"
                        class="me-3 language"></span>Italy
                </a>
            </li>
            <li class="col-lg-6 mb-2">
                <a href="javascript:void(0)" class="btn btn-country btn-lg btn-block">
                    <span class="country-selector"><img alt=""
                        src="../assets/images/flags/spain_flag.jpg"
                        class="me-3 language"></span>Spain
                </a>
            </li>
            <li class="col-lg-6 mb-2">
                <a href="javascript:void(0)" class="btn btn-country btn-lg btn-block">
                    <span class="country-selector"><img alt=""
                        src="../assets/images/flags/india_flag.jpg"
                        class="me-3 language"></span>India
                </a>
            </li>
            <li class="col-lg-6 mb-2">
                <a href="javascript:void(0)" class="btn btn-country btn-lg btn-block">
                    <span class="country-selector"><img alt=""
                        src="../assets/images/flags/french_flag.jpg"
                        class="me-3 language"></span>French
                </a>
            </li>
            <li class="col-lg-6 mb-2">
                <a href="javascript:void(0)" class="btn btn-country btn-lg btn-block">
                    <span class="country-selector"><img alt=""
                        src="../assets/images/flags/russia_flag.jpg"
                        class="me-3 language"></span>Russia
                </a>
            </li>
            <li class="col-lg-6 mb-2">
                <a href="javascript:void(0)" class="btn btn-country btn-lg btn-block">
                    <span class="country-selector"><img alt=""
                        src="../assets/images/flags/germany_flag.jpg"
                        class="me-3 language"></span>Germany
                </a>
            </li>
            <li class="col-lg-6 mb-2">
                <a href="javascript:void(0)" class="btn btn-country btn-lg btn-block">
                    <span class="country-selector"><img alt=""
                        src="../assets/images/flags/argentina.jpg"
                        class="me-3 language"></span>Argentina
                </a>
            </li>
            <li class="col-lg-6 mb-2">
                <a href="javascript:void(0)" class="btn btn-country btn-lg btn-block">
                    <span class="country-selector"><img alt="" src="../assets/images/flags/malaysia.jpg"
                        class="me-3 language"></span>Malaysia
                </a>
            </li>
            <li class="col-lg-6 mb-2">
                <a href="javascript:void(0)" class="btn btn-country btn-lg btn-block">
                    <span class="country-selector"><img alt="" src="../assets/images/flags/turkey.jpg"
                        class="me-3 language"></span>Turkey
                </a>
            </li>
        </ul>
    </div>
</div>
</div>
</div>
<!-- Country-selector modal-->

<%@include file="footer.jsp"%>