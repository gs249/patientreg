myapp.controller("patientctrl", function($scope, $location, $http, $timeout, $window) {
	//alert("patientctrl Controller Called");
	var baseUrl = $location.protocol() + "://" + location.host + u;
	
	var link = baseUrl + "getpatient";
	$http.get(link).success(function(data) {
		$scope.patientdata=data;
		console.log(data);
	}).error(function(data) {
		console.log(data);
	});
	
	$scope.getallcategory=function(){
		var link = baseUrl + "getcategory";
	$http.get(link).success(function(data) {
		$scope.category=data;
		console.log(data);
	}).error(function(data) {
		console.log(data);
	});
	}
	
	
	$scope.insertpatient=function(){
		alert("enter in insert patient");
		var formData = new FormData;
		formData.append('patientStr', JSON.stringify($scope.patient));
		alert( JSON.stringify($scope.patient));
		var link = baseUrl + "insertpatientdata";

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
	
	$scope.delete=function(patientid){
	   var link = baseUrl + "deletepatient?id="+patientid;
	$http.delete(link).success(function(data) {
		console.log(data);
		location.reload();
	}).error(function(data) {
		console.log(data);
	});
   }
	
	});