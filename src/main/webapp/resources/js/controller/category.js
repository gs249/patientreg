myapp.controller("categoryctrl", function($scope, $location, $http, $timeout, $window) {
	//alert("Banner Controller Called");
	var baseUrl = $location.protocol() + "://" + location.host + u;

	var link = baseUrl + "getcategory";
	$http.get(link).success(function(data) {
		$scope.category=data;
		console.log(data);
	}).error(function(data) {
		console.log(data);
	});

	$scope.insercategory = function() {
		var formData = new FormData;
		formData.append('categoryStr', JSON.stringify($scope.category));
		var link = baseUrl + "insertcategorydata";

		$http({
			url: link,
			headers: { 'Content-Type': undefined },
			method: "POST",
			data: formData,
			transformRequest: function(data, headersGetterFunction) { return data; }
		}).success(function(data, status, headers, config) {


			alert("Data Inserted Successfully");
			console.log("Data : " + data);
			console.log("Status : " + status);
			console.log("header : " + headers);
			console.log("Config : " + config);


		}).error(function(data, status, headers, config) {
			console.log('Something wrong! Please try after sometime!');
			console.log("Data : " + data);
			console.log("Status : " + status);
			console.log("header : " + headers);
			console.log("Config : " + config);

		});
	}

   $scope.delete=function(categoryid){
	   var link = baseUrl + "deletecategory?id="+categoryid;
	$http.delete(link).success(function(data) {
		console.log(data);
		location.reload();
	}).error(function(data) {
		console.log(data);
	});
   }
   
   $scope.redirectbyid=function(categoryid)
   {
	   link = baseUrl+"editcategory?id="+categoryid;
	   window.location.href=link;
   }
   $scope.categorybyid=function(){
	    var search = $window.location.search;
     var urlparam = new URLSearchParams(search);
     var categoryid = urlparam.get("id");
	   var link = baseUrl + "getcategorybyid?id="+categoryid;
	$http.get(link).success(function(data) {
		console.log(data);
		$scope.edit=data;
	}).error(function(data) {
		console.log(data);
	});
   }

   $scope.updatebyid=function(categoryid){
	  var formData = new FormData;
		formData.append('editcategoryStr', JSON.stringify($scope.edit));
		var link = baseUrl + "updatebyid?id="+categoryid;

		$http({
			url: link,
			headers: { 'Content-Type': undefined },
			method: "POST",
			data: formData,
			transformRequest: function(data, headersGetterFunction) { return data; }
		}).success(function(data, status, headers, config) {


			alert("Data Inserted Successfully");
			console.log("Data : " + data);
			console.log("Status : " + status);
			console.log("header : " + headers);
			console.log("Config : " + config);


		}).error(function(data, status, headers, config) {
			console.log('Something wrong! Please try after sometime!');
			console.log("Data : " + data);
			console.log("Status : " + status);
			console.log("header : " + headers);
			console.log("Config : " + config);

		});
   }

});