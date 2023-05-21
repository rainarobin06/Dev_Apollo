var nursingApp = angular.module("nursingApp", ['ngFileUpload', 'oi.select']);

nursingApp.filter('titleCase', function () {
	return function (input) {
		input = input || '';
		return input.replace(/\w\S*/g, function (txt) { return txt.charAt(0).toUpperCase() + txt.substr(1).toLowerCase(); });
	};
});

nursingApp.filter('splitAttachments', function () {
	return function (input) {
		var attachArray = [];
		if (input.indexOf(';')) {
			attachArray = input.split(';');
		}
		return attachArray;
	};
});

nursingApp.filter('convertMB', function () {
	return function (input) {
		var sizes = ['Bytes', 'KB', 'MB', 'GB', 'TB'];
		if (input == 0) return '0 Byte';
		var i = parseInt(Math.floor(Math.log(input) / Math.log(1024)));
		return Math.round(input / Math.pow(1024, i), 2) + ' ' + sizes[i];
	};
});

nursingApp.controller("navController", ['$scope', '$rootScope', '$http', '$log', '$timeout', function ($scope, $rootScope, $http, $log, $timeout) {
	$scope.IsLoaded = false;
	$scope.IsAdmin = false;
	$scope.ShowServiceUnavailable = false;
	$rootScope.MessageType = '';
	$rootScope.MessageContent = '';

	$timeout(function () {
		$scope.currentUserId = document.getElementById('currentUserId').value;
		if ($scope.currentUserId) {
			$rootScope.getCurrentUserInfo();
		}
	});

	$rootScope.DisaplyMessage = function (infotype, message) {
		$rootScope.MessageType = infotype;
		$rootScope.MessageContent = message;
		$timeout(function () {
			$rootScope.MessageContent = '';
		}, 3000);
	}

	$rootScope.getCurrentUserInfo = function () {
		$http({
			method: 'POST',
			url: '/api/getuserinfo/' + $scope.currentUserId
		}).then(function successCallback(response) {
			//$log.log('userinfo', response.data);
			$scope.IsLoaded = true;
			$rootScope.currentUserObject = response.data;
			if ($rootScope.currentUserObject.user_detail[0].module === 'No') {
				alert('Access denied. Your account does not configured to use The Apollo LENS, please reach out lighthouse admin for the access!');
				window.location.href = '/Login';
			} else {
				$scope.checkAdmin();
			}
		}, function errorCallback(err) {
			$log.log('danger', err);
			$rootScope.DisaplyMessage('danger', "Could not load the user profile. Please try again later.");
			$scope.IsLoaded = true;
			$scope.ShowServiceUnavailable = true;
			if (err.status == 401) {
				location.href = '/Login';
			}
		});
	}

	$scope.checkAdmin = function () {
		$http({
			method: 'GET',
			url: '/api/checkadmin/' + $rootScope.currentUserObject.user_detail[0].user_id
		}).then(function successCallback(response) {
			if (response.data.length > 0) {
				$scope.IsAdmin = true;
			}
		}, function errorCallback(err) {
			$log.log('danger', err);
			$rootScope.DisaplyMessage('danger', err.data);
			if (err.status == 401) {
				location.href = '/Login';
			}
		});
	}
}]);

nursingApp.controller("entryController", ['$scope', '$rootScope', '$http', '$interval', '$log', 'Upload', '$timeout', function ($scope, $rootScope, $http, $interval, $log, Upload, $timeout) {
	$rootScope.NavLocation = 'Entry';
	var promise;
	$scope.UserMappedHospitals = [];
	$scope.report = [];
	$scope.attachmentProgress = [];
	$scope.IsSubmitting = false;
	$scope.SubmitProgress = 'Please wait...';
	$scope.IsSubmitClicked = false;
	$scope.IsValidForm = true;
	$scope.IsLookingData = false;
	$scope.IsEntryBlocked = false;
	$rootScope.ShowSuccess = false;
	$rootScope.ShowError = false;
	$scope.form = {};
	$scope.hideForm = false;
	$scope.disableBTN = true;
	$scope.disableSubmitBtn = false;
	$scope.hideSubmitBtn = false;
	$scope.showSubmittingMsg = false;
	$scope.multipleEntriesForms = ["tbl01", "tbl02", "tbl03", "tbl04", "tbl06", "tbl07", "tbl28", "tbl29", "tbl30", "tbl31", "tbl32", "tbl33", "tbl34", "tbl35", "tbl36", "tbl37"];
	$scope.ParticipantTypes = ["Patients", "Staff", "Other Staff", "Other participants"];

	//addrow
	$scope.report10addRow = function () {
		var Report10Object = {
			Hospital_Id: $scope.form.Hospital_Id,
			LightHouseHospitalId: $scope.form.LightHouseHospitalId,
			MonthIndex: $scope.form.MonthIndex,
			MonthName: $scope.form.MonthName,
			OrderNumber: 0,
			FormStatus: $scope.form.FormStatus,
			Year: $scope.form.Year,
			Id: 0,
			ReportName: "",
			Details: "",
			Remarks: "",
			SelectedFiles: [],
		};
		$scope.form.report10.push(Report10Object);
	};
	$scope.report1addRow = function () {
		var Report1Object = {
			Hospital_Id: $scope.form.Hospital_Id,
			LightHouseHospitalId: $scope.form.LightHouseHospitalId,
			MonthIndex: $scope.form.MonthIndex,
			MonthName: $scope.form.MonthName,
			OrderNumber: 0,
			FormStatus: $scope.form.FormStatus,
			Year: $scope.form.Year,
			Id: 0,
			ReportName: "",
			Details: "",
			Remarks: "",
			SelectedFiles: [],
		};
		$scope.form.report1.push(Report1Object);
	};
	$scope.report2addRow = function () {
		var Report2Object = {
			Hospital_Id: $scope.form.Hospital_Id,
			LightHouseHospitalId: $scope.form.LightHouseHospitalId,
			MonthIndex: $scope.form.MonthIndex,
			MonthName: $scope.form.MonthName,
			OrderNumber: 0,
			FormStatus: $scope.form.FormStatus,
			Year: $scope.form.Year,
			Id: 0,
			ReportName: "",
			Details: "",
			Remarks: "",
			SelectedFiles: [],
		};
		$scope.form.report2.push(Report2Object);
	};
	$scope.report3addRow = function () {
		var Report3Object = {
			Hospital_Id: $scope.form.Hospital_Id,
			LightHouseHospitalId: $scope.form.LightHouseHospitalId,
			MonthIndex: $scope.form.MonthIndex,
			MonthName: $scope.form.MonthName,
			OrderNumber: 0,
			FormStatus: $scope.form.FormStatus,
			Year: $scope.form.Year,
			Id: 0,
			ReportName: "",
			Details: "",
			Remarks: "",
			SelectedFiles: [],
		};
		$scope.form.report3.push(Report3Object);
	};
	$scope.report4addRow = function () {
		var Report4Object = {
			Hospital_Id: $scope.form.Hospital_Id,
			LightHouseHospitalId: $scope.form.LightHouseHospitalId,
			MonthIndex: $scope.form.MonthIndex,
			MonthName: $scope.form.MonthName,
			OrderNumber: 0,
			FormStatus: $scope.form.FormStatus,
			Year: $scope.form.Year,
			Id: 0,
			ReportName: "",
			Details: "",
			Remarks: "",
			SelectedFiles: [],
		};
		$scope.form.report4.push(Report4Object);
	};
	$scope.report5addRow = function () {
		var Report5Object = {
			Hospital_Id: $scope.form.Hospital_Id,
			LightHouseHospitalId: $scope.form.LightHouseHospitalId,
			MonthIndex: $scope.form.MonthIndex,
			MonthName: $scope.form.MonthName,
			OrderNumber: 0,
			FormStatus: $scope.form.FormStatus,
			Year: $scope.form.Year,
			Id: 0,
			ReportName: "",
			Details: "",
			Remarks: "",
			SelectedFiles: [],
		};
		$scope.form.report5.push(Report5Object);
	};
	$scope.report6addRow = function () {
		var Report6Object = {
			Hospital_Id: $scope.form.Hospital_Id,
			LightHouseHospitalId: $scope.form.LightHouseHospitalId,
			MonthIndex: $scope.form.MonthIndex,
			MonthName: $scope.form.MonthName,
			OrderNumber: 0,
			FormStatus: $scope.form.FormStatus,
			Year: $scope.form.Year,
			Id: 0,
			ReportName: "",
			Details: "",
			Remarks: "",
			SelectedFiles: [],
		};
		$scope.form.report6.push(Report6Object);
	};
	$scope.report7addRow = function () {
		var Report7Object = {
			Hospital_Id: $scope.form.Hospital_Id,
			LightHouseHospitalId: $scope.form.LightHouseHospitalId,
			MonthIndex: $scope.form.MonthIndex,
			MonthName: $scope.form.MonthName,
			OrderNumber: 0,
			FormStatus: $scope.form.FormStatus,
			Year: $scope.form.Year,
			Id: 0,
			ReportName: "",
			Details: "",
			Remarks: "",
			SelectedFiles: [],
		};
		$scope.form.report7.push(Report7Object);
	};
	$scope.report8addRow = function () {
		var Report8Object = {
			Hospital_Id: $scope.form.Hospital_Id,
			LightHouseHospitalId: $scope.form.LightHouseHospitalId,
			MonthIndex: $scope.form.MonthIndex,
			MonthName: $scope.form.MonthName,
			OrderNumber: 0,
			FormStatus: $scope.form.FormStatus,
			Year: $scope.form.Year,
			Id: 0,
			ReportName: "",
			Details: "",
			Remarks: "",
			SelectedFiles: [],
		};
		$scope.form.report8.push(Report8Object);
	};
	$scope.report9addRow = function () {
		var Report9Object = {
			Hospital_Id: $scope.form.Hospital_Id,
			LightHouseHospitalId: $scope.form.LightHouseHospitalId,
			MonthIndex: $scope.form.MonthIndex,
			MonthName: $scope.form.MonthName,
			OrderNumber: 0,
			FormStatus: $scope.form.FormStatus,
			Year: $scope.form.Year,
			Id: 0,
			ReportName: "",
			Details: "",
			Remarks: "",
			SelectedFiles: [],
		};
		$scope.form.report9.push(Report9Object);
	};

	$scope.topcomplaintsaddRow = function () {
		var complaintObject = {
			"Hospital_Id": $scope.form.Hospital_Id,
			"LightHouseHospitalId": $scope.form.LightHouseHospitalId,
			"MonthIndex": $scope.form.MonthIndex,
			"MonthName": $scope.form.MonthName,
			"OrderNumber": 0,
			"FormStatus": $scope.form.FormStatus,
			"Year": $scope.form.Year,
			"Id": 0,
			"NameOfComplaint": "",
			"NumberOfComplaints": "",
			"Actiontaken": "",
			"Remarks": "",
			"SelectedFiles": []
		};
		$scope.form.topcomplaints.push(complaintObject);
	}
	$scope.topincidentsaddRow = function () {
		var incidentObject = {
			"Hospital_Id": $scope.form.Hospital_Id,
			"LightHouseHospitalId": $scope.form.LightHouseHospitalId,
			"MonthIndex": $scope.form.MonthIndex,
			"MonthName": $scope.form.MonthName,
			"OrderNumber": 0,
			"FormStatus": $scope.form.FormStatus,
			"Year": $scope.form.Year,
			"Id": 0,
			"NameOfIncident": "",
			"NumberOfIncidents": "",
			"ActionTaken": "",
			"MedicationError": "",
			"NSI": "",
			"PatientFall": "",
			"SampleError": "",
			"Remarks": "",
			"SelectedFiles": []
		};
		$scope.form.topincidents.push(incidentObject);
	}
	$scope.COEaddRow = function () {
		var COEObject = {
			"Hospital_Id": $scope.form.Hospital_Id,
			"LightHouseHospitalId": $scope.form.LightHouseHospitalId,
			"MonthIndex": $scope.form.MonthIndex,
			"MonthName": $scope.form.MonthName,
			"FormStatus": $scope.form.FormStatus,
			"Year": $scope.form.Year,
			"Id": 0,
			"ReportName": "",
			"NoOfNursesAttended": "",
			"ConsultantsInvolved": "",
			"NatureOfActivityDone": "",
			"ConsultantFeedback": "",
			"ActionTaken": "",
			"AdditionalMentions": "",
			"Remarks": "",
			"SelectedFiles": []
		};
		$scope.form.COE.push(COEObject);
	}

	$scope.SOPaddRow = function () {
		var SOPObject = {
			"Hospital_Id": $scope.form.Hospital_Id,
			"LightHouseHospitalId": $scope.form.LightHouseHospitalId,
			"MonthIndex": $scope.form.MonthIndex,
			"MonthName": $scope.form.MonthName,
			"FormStatus": $scope.form.FormStatus,
			"Year": $scope.form.Year,
			"Id": 0,
			"ReportName": "",
			"NoOfNursesTrained": "",
			"NoOfNursesCompetencyChecked": "",
			"NoOfNursesPassed": "",
			"NoOfNursesRetrained": "",
			"ConsultantInvolved": "",
			"ConsultantFeedback": "",
			"AdditionalMentions": "",
			"Remarks": "",
			"SelectedFiles": []
		};
		$scope.form.SOP.push(SOPObject);
	}

	$scope.ServiceExcellenceaddRow = function () {
		var ServiceExcellenceObject = {
			"Hospital_Id": $scope.form.Hospital_Id,
			"LightHouseHospitalId": $scope.form.LightHouseHospitalId,
			"MonthIndex": $scope.form.MonthIndex,
			"MonthName": $scope.form.MonthName,
			"FormStatus": $scope.form.FormStatus,
			"Year": $scope.form.Year,
			"Id": 0,
			"NoOfPatients": "",
			"Participant": "",
			"PatientFamilyFeedback": "",
			"StaffFeedback": "",
			"ConsultantFeedback": "",
			"Remarks": "",
			"SelectedFiles": []
		};
		$scope.form.ServiceExcellence.push(ServiceExcellenceObject);
	}
	//deleterow

	$scope.report1deleteRow = function (i, Id) {
		if (confirm("Are you sure to delete the entry? This cannot be undone.")) {
			if (Id == 0) {
				$scope.form.report1.splice(i, 1);
			} else {
				$scope.IsEntryDeleting = true;
				$scope.DeleteEntry(Id, i);
			}
		}
	};
	$scope.report2deleteRow = function (i, Id) {
		if (confirm("Are you sure to delete the entry? This cannot be undone.")) {
			if (Id == 0) {
				$scope.form.report2.splice(i, 1);
			} else {
				$scope.IsEntryDeleting = true;
				$scope.DeleteEntry(Id, i);
			}
		}
	};
	$scope.report3deleteRow = function (i, Id) {
		if (confirm("Are you sure to delete the entry? This cannot be undone.")) {
			if (Id == 0) {
				$scope.form.report3.splice(i, 1);
			} else {
				$scope.IsEntryDeleting = true;
				$scope.DeleteEntry(Id, i);
			}
		}
	};
	$scope.report4deleteRow = function (i, Id) {
		if (confirm("Are you sure to delete the entry? This cannot be undone.")) {
			if (Id == 0) {
				$scope.form.report4.splice(i, 1);
			} else {
				$scope.IsEntryDeleting = true;
				$scope.DeleteEntry(Id, i);
			}
		}
	};
	$scope.report5deleteRow = function (i, Id) {
		if (confirm("Are you sure to delete the entry? This cannot be undone.")) {
			if (Id == 0) {
				$scope.form.report5.splice(i, 1);
			} else {
				$scope.IsEntryDeleting = true;
				$scope.DeleteEntry(Id, i);
			}
		}
	};
	$scope.report6deleteRow = function (i, Id) {
		if (confirm("Are you sure to delete the entry? This cannot be undone.")) {
			if (Id == 0) {
				$scope.form.report6.splice(i, 1);
			} else {
				$scope.IsEntryDeleting = true;
				$scope.DeleteEntry(Id, i);
			}
		}
	};
	$scope.report7deleteRow = function (i, Id) {
		if (confirm("Are you sure to delete the entry? This cannot be undone.")) {
			if (Id == 0) {
				$scope.form.report7.splice(i, 1);
			} else {
				$scope.IsEntryDeleting = true;
				$scope.DeleteEntry(Id, i);
			}
		}
	};
	$scope.report8deleteRow = function (i, Id) {
		if (confirm("Are you sure to delete the entry? This cannot be undone.")) {
			if (Id == 0) {
				$scope.form.report8.splice(i, 1);
			} else {
				$scope.IsEntryDeleting = true;
				$scope.DeleteEntry(Id, i);
			}
		}
	};
	$scope.report9deleteRow = function (i, Id) {
		if (confirm("Are you sure to delete the entry? This cannot be undone.")) {
			if (Id == 0) {
				$scope.form.report9.splice(i, 1);
			} else {
				$scope.IsEntryDeleting = true;
				$scope.DeleteEntry(Id, i);
			}
		}
	};
	$scope.report10deleteRow = function (i, Id) {
		if (confirm("Are you sure to delete the entry? This cannot be undone.")) {
			if (Id == 0) {
				$scope.form.report10.splice(i, 1);
			} else {
				$scope.IsEntryDeleting = true;
				$scope.DeleteEntry(Id, i);
			}
		}
	};

	$scope.topcomplaintsdeleteRow = function (i, Id) {
		if (confirm('Are you sure to delete the entry? This cannot be undone.')) {
			if (Id == 0) {
				$scope.form.topcomplaints.splice(i, 1);
			} else {
				$scope.IsEntryDeleting = true;
				$scope.DeleteEntry(Id, i);
			}
		}
	}
	$scope.topincidentsdeleteRow = function (i, Id) {
		if (confirm('Are you sure to delete the entry? This cannot be undone.')) {
			if (Id == 0) {
				$scope.form.topincidents.splice(i, 1);
			} else {
				$scope.IsEntryDeleting = true;
				$scope.DeleteEntry(Id, i);
			}
		}
	}
	$scope.IsEntryDeleting = false;
	$scope.COEdeleteRow = function (i, Id) {
		if (confirm('Are you sure to delete the entry? This cannot be undone.')) {
			if (Id == 0) {
				$scope.form.COE.splice(i, 1);
			} else {
				$scope.IsEntryDeleting = true;
				$scope.DeleteEntry(Id, i);
			}
		}
	}
	$scope.SOPdeleteRow = function (i, Id) {
		if (confirm('Are you sure to delete the entry? This cannot be undone.')) {
			if (Id == 0) {
				$scope.form.SOP.splice(i, 1);
			} else {
				$scope.IsEntryDeleting = true;
				$scope.DeleteEntry(Id, i);
			}
		}
	}

	$scope.ServiceExcellencedeleteRow = function (i, Id) {
		if (confirm("Are you sure to delete the entry? This cannot be undone.")) {
			if (Id == 0) {
				$scope.form.ServiceExcellence.splice(i, 1);
			} else {
				$scope.IsEntryDeleting = true;
				$scope.DeleteEntry(Id, i);
			}
		}
	};
	$scope.DeleteEntry = function (Id, rowIndex) {
		$http({
			method: 'POST',
			url: '/api/removeentry?formCode=' + $scope.ReportSelected.Formcode + '&Id=' + Id
		}).then(function successCallback(response) {
			$rootScope.DisaplyMessage('success', response.data);
			$scope.IsEntryDeleting = false;
			/* $log.log($scope.ReportSelected.Formcode);*/
			switch ($scope.ReportSelected.Formcode) {
				case 'TBL01':
					$scope.form.COE.splice(rowIndex, 1);
					break;
				case 'TBL02':
					$scope.form.SOP.splice(rowIndex, 1);
					break;
				case 'TBL03':
					$scope.form.ServiceExcellence.splice(rowIndex, 1);
					break;
				case 'TBL04':
					if (rowIndex > 2) {
						$scope.form.CCTopConsultants.splice(rowIndex, 1);
					} else {
						$scope.form.CCTopComplaints.splice(rowIndex, 1);
					}
					break;
				case 'TBL06':
					$scope.form.topincidents.splice(rowIndex, 1);
					break;
				case 'TBL07':
					$scope.form.topcomplaints.splice(rowIndex, 1);
					break;
				case "TBL28":
					$scope.form.report1.splice(rowIndex, 1);
					break;
				case "TBL29":
					$scope.form.report2.splice(rowIndex, 1);
					break;
				case "TBL30":
					$scope.form.report3.splice(rowIndex, 1);
					break;
				case "TBL31":
					$scope.form.report4.splice(rowIndex, 1);
					break;
				case "TBL32":
					$scope.form.report5.splice(rowIndex, 1);
					break;
				case "TBL33":
					$scope.form.report6.splice(rowIndex, 1);
					break;
				case "TBL34":
					$scope.form.report7.splice(rowIndex, 1);
					break;
				case "TBL35":
					$scope.form.report8.splice(rowIndex, 1);
					break;
				case "TBL36":
					$scope.form.report9.splice(rowIndex, 1);
					break;
				case "TBL37":
					$scope.form.report10.splice(rowIndex, 1);
					break;
				default:
					alert('Form code is missing!');
					break;
			}
		}, function errorCallback(err) {
			$log.log('danger', err);
			$scope.IsEntryDeleting = false;
			$rootScope.DisaplyMessage('danger', err.data);
			if (err.status == 401) {
				location.href = '/Login';
			}
		});
	}

	//Consultant Connect
	$scope.InitiateConsultantConnect = function () {
		$scope.form.CCTopConsultants = [];
		$scope.form.CCTopComplaints = [];
		for (var i = 0; i < 3; i++) {
			var consultConnectObj = {};
			consultConnectObj.Hospital_Id = $scope.form.Hospital_Id;
			consultConnectObj.LightHouseHospitalId = $scope.form.LightHouseHospitalId;
			consultConnectObj.MonthIndex = $scope.form.MonthIndex;
			consultConnectObj.MonthName = $scope.form.MonthName;
			consultConnectObj.FormStatus = $scope.form.FormStatus;
			consultConnectObj.Year = $scope.form.Year;
			consultConnectObj.Id = 0;
			consultConnectObj.ConsultantsInvolved = '';
			consultConnectObj.ConsultantComplaints = '';
			consultConnectObj.PostComplaintAction = '';
			consultConnectObj.ConsultantFeedback = '';
			consultConnectObj.AdditionalMentions = '';
			consultConnectObj.Remarks = '';
			consultConnectObj.SelectionType = 'Consultant';
			consultConnectObj.SelectedFiles = [];
			$scope.form.CCTopConsultants.push(consultConnectObj);

			var consultConnectObj = {};
			consultConnectObj.Hospital_Id = $scope.form.Hospital_Id;
			consultConnectObj.LightHouseHospitalId = $scope.form.LightHouseHospitalId;
			consultConnectObj.MonthIndex = $scope.form.MonthIndex;
			consultConnectObj.MonthName = $scope.form.MonthName;
			consultConnectObj.FormStatus = $scope.form.FormStatus;
			consultConnectObj.Year = $scope.form.Year;
			consultConnectObj.Id = 0;
			consultConnectObj.ConsultantsInvolved = '';
			consultConnectObj.ConsultantComplaints = '';
			consultConnectObj.PostComplaintAction = '';
			consultConnectObj.ConsultantFeedback = '';
			consultConnectObj.AdditionalMentions = '';
			consultConnectObj.SelectedFiles = [];
			consultConnectObj.Remarks = '';
			consultConnectObj.SelectionType = 'Complaint';
			$scope.form.CCTopComplaints.push(consultConnectObj);
		}
	}

	$scope.fillConsultantConnect = function () {
		var topConsultantsLength = $scope.form.CCTopConsultants.length;
		var topComplaintsLength = $scope.form.CCTopComplaints.length;
		//Push empty objects for Draft data
		for (var i = 0; i < 3 - topConsultantsLength; i++) {
			var consultConnectObj = {};
			consultConnectObj.Hospital_Id = $scope.form.Hospital_Id;
			consultConnectObj.LightHouseHospitalId = $scope.form.LightHouseHospitalId;
			consultConnectObj.MonthIndex = $scope.form.MonthIndex;
			consultConnectObj.MonthName = $scope.form.MonthName;
			consultConnectObj.FormStatus = $scope.form.FormStatus;
			consultConnectObj.Year = $scope.form.Year;
			consultConnectObj.Id = 0;
			consultConnectObj.ConsultantsInvolved = '';
			consultConnectObj.ConsultantComplaints = '';
			consultConnectObj.PostComplaintAction = '';
			consultConnectObj.ConsultantFeedback = '';
			consultConnectObj.AdditionalMentions = '';
			consultConnectObj.Remarks = '';
			consultConnectObj.SelectedFiles = [];
			consultConnectObj.SelectionType = 'Consultant';
			$scope.form.CCTopConsultants.push(consultConnectObj);
		}
		for (var i = 0; i < 3 - topComplaintsLength; i++) {
			var consultConnectObj = {};
			consultConnectObj.Hospital_Id = $scope.form.Hospital_Id;
			consultConnectObj.LightHouseHospitalId = $scope.form.LightHouseHospitalId;
			consultConnectObj.MonthIndex = $scope.form.MonthIndex;
			consultConnectObj.MonthName = $scope.form.MonthName;
			consultConnectObj.FormStatus = $scope.form.FormStatus;
			consultConnectObj.Year = $scope.form.Year;
			consultConnectObj.Id = 0;
			consultConnectObj.ConsultantsInvolved = '';
			consultConnectObj.ConsultantComplaints = '';
			consultConnectObj.PostComplaintAction = '';
			consultConnectObj.ConsultantFeedback = '';
			consultConnectObj.AdditionalMentions = '';
			consultConnectObj.Remarks = '';
			consultConnectObj.SelectedFiles = [];
			consultConnectObj.SelectionType = 'Complaint';
			$scope.form.CCTopComplaints.push(consultConnectObj);
		}
	}

	$scope.ReportData = [];
	$scope.dummyRow = {};
	$scope.NoRecordsFoundLastMonthsMessage = "No records found for last 3 months";
	$scope.viewPreviousReportData = function () {
		var data = {};
		data.StartDate = $scope.StartDate;
		data.EndDate = $scope.EndDate;
		var monthsSelected = [$scope.StartDate.getMonth(), $scope.StartDate.getMonth() + 1, $scope.EndDate.getMonth()];
		$log.log('monthsSelected', monthsSelected);
		data.LightHouseHospitalId = $scope.PlaceSelected.HospitalId.toString();
		data.FormCode = $scope.ReportSelected.Formcode;
		var param = JSON.stringify(data);
		var url = `/api/getrecordsbyrange?param=${param}`;
		$http({
			method: 'GET',
			url: url
		}).then(function successCallback(response) {
			$scope.ReportData = response.data;
			if ($scope.ReportData.length == 0) {
				//Add 3 dummy rows
			} else {
				angular.forEach(monthsSelected, function (monthVal) {
					var filteredData = $scope.ReportData.filter(function (_report) {
						return _report.MonthIndex == monthVal;
					});
					//Add Dummy Row
					$scope.dummyRow = {};
					angular.copy($scope.ReportData[0], $scope.dummyRow);
					if (filteredData.length == 0) {
						$log.log('No records found for ', monthVal);
						for (const [key, value] of Object.entries($scope.dummyRow)) {
							console.log(key, value);
							if (key != "Year") {
								if (key == "MonthName") {
									$scope.dummyRow["MonthName"] = $scope.monthData[monthVal].name;
									$scope.dummyRow["MonthIndex"] = $scope.monthData[monthVal].value;
								} else if (key == "Id") {
									$scope.dummyRow["Id"] = 0;
								} else if (key == "SC_MT_Expenditure") {
									$scope.dummyRow["SC_MT_Expenditure"] = 0;
								} else if (key == "SC_Achievement") {
									$scope.dummyRow["SC_Achievement"] = 0;
								} else {
									$scope.dummyRow[key] = "NA";
								}
							}
						}
						$scope.ReportData.push($scope.dummyRow);
					}
				});
			}
			$log.log('ReportData',$scope.ReportData);
		}, function errorCallback(err) {
			$log.log('danger', err);
			$rootScope.DisaplyMessage('danger', err.data);
			if (err.status == 401) {
				location.href = '/Login';
			}
		});
	}

	$scope.todayDate = (new Date()).getDate();

	$scope.getCurrentYear = function () {
		var currentTime = new Date();
		$scope.yearData = [currentTime.getFullYear() - 1, currentTime.getFullYear(), currentTime.getFullYear() + 1, currentTime.getFullYear() + 2];
		$scope.YearSelected = currentTime.getFullYear();
		$scope.monthData = [
			{ "name": "January", value: 0 },
			{ "name": "February", value: 1 },
			{ "name": "March", value: 2 },
			{ "name": "April", value: 3 },
			{ "name": "May", value: 4 },
			{ "name": "June", value: 5 },
			{ "name": "July", value: 6 },
			{ "name": "August", value: 7 },
			{ "name": "September", value: 8 },
			{ "name": "October", value: 9 },
			{ "name": "November", value: 10 },
			{ "name": "December", value: 11 }
		];
		if (currentTime.getMonth() === 0) {
			$scope.YearSelected = currentTime.getFullYear() - 1;
			$scope.MonthtSelected = $scope.monthData[11];
		} else {
			$scope.MonthtSelected = $scope.monthData[currentTime.getMonth() - 1];
		}
		$scope.setStartEndDate();
		$scope.getallhospitals();
	}

	$scope.setStartEndDate = function () {
		if ($scope.MonthtSelected.value === 0) {
			$scope.EndDate = new Date($scope.YearSelected - 1, 11, 25);
		} else {
			$scope.EndDate = new Date($scope.YearSelected, $scope.MonthtSelected.value - 1, 25);
		}
		$scope.StartDate = angular.copy($scope.EndDate);
		$scope.StartDate.setDate(1);
		$scope.StartDate.setMonth($scope.StartDate.getMonth() - 2);
	}

	$scope.allAttachments = [];
	$scope.viewAttachments = function (item) {
		$scope.allAttachments = [];
		$scope.ReportDetails = item;
		$http({
			method: 'GET',
			url: '/api/attachments/' + $scope.ReportSelected.Formcode + '/' + item.Id
		}).then(function successCallback(response) {
			$scope.allAttachments = response.data;                                  //
			angular.forEach($scope.allAttachments, function (item) {
				item.fileLink = '/home/downloadfile?formCode=' + $scope.ReportSelected.Formcode + '&fileId=' + item.Id;
			});
			//$log.log('attachments', $scope.allAttachments);
		}, function errorCallback(err) {
			$log.log('danger', err);
			$rootScope.DisaplyMessage('danger', err.data);
			if (err.status == 401) {
				location.href = '/Login';
			}
		});
	}

	$scope.getallhospitals = function () {
		$http({
			method: 'GET',
			url: '/api/getallhospitals'
		}).then(function successCallback(response) {
			$scope.AllHospitalsList = response.data;        //
			$scope.getallreports();
			$scope.start();
		}, function errorCallback(err) {
			$log.log('danger', err);
			$rootScope.DisaplyMessage('danger', err.data);
			if (err.status == 401) {
				location.href = '/Login';
			}
		});
	}

	$scope.getallreports = function () {
		$http({
			method: 'GET',
			url: '/api/getallreports'
		}).then(function successCallback(response) {
			$scope.report = response.data;
		}, function errorCallback(err) {
			$log.log('danger', err);
			$rootScope.DisaplyMessage('danger', err.data);
			if (err.status == 401) {
				location.href = '/Login';
			}
		});
	}

	$scope.getCurrentYear();

	$scope.start = function () {
		$scope.stop();
		promise = $interval(function () {
			if ($rootScope.currentUserObject) {
				$scope.mappedHospitals = $rootScope.currentUserObject.user_detail[0].location.map(function (value) {
					return parseInt(value);
				});
				$scope.stop();
				$scope.filterMappedLocations();
			} else {
				$log.log('looking for mapped hospitals....');
			}
		}, 1000);
	};

	$scope.stop = function () {
		$interval.cancel(promise);
	};

	$scope.$on('$destroy', function () {
		$scope.stop();
	});

	$scope.filterMappedLocations = function () {
		angular.forEach($scope.AllHospitalsList, function (hospital) {
			if ($scope.mappedHospitals.indexOf(hospital.HospitalId) > -1) {
				hospital.is_mapped = true;
			} else {
				hospital.is_mapped = false;
			}
		});
		$scope.UserMappedHospitals = $scope.AllHospitalsList.filter(function (item) {
			return item.is_mapped;
		});
	}

	$scope.removeUploadFile = function (fileIndex) {
		$scope.SelectedFiles.splice(fileIndex, 1);
	}

	$scope.removeRowUploadFile = function (fileIndex, rowItem) {
		rowItem.SelectedFiles.splice(fileIndex, 1);
	}

	$scope.KeepFiles = function (files) {
		var exisitngFiles = [];
		angular.forEach(files, function (_file) {
			var filterFiles = $scope.SelectedFiles.filter(function (_attach) {
				return _attach.name == _file.name;
			});
			if (filterFiles.length > 0) {
				exisitngFiles.push(_file.name);
			} else {
				$scope.SelectedFiles.push(_file);
			}
		});
		if (exisitngFiles.length > 0) {
			$rootScope.DisaplyMessage('warning', 'Already exists :' + exisitngFiles.join(','));
		}
		//$scope.SelectedFiles = $scope.SelectedFiles.concat(files);
		document.getElementById('fileUpload').value = '';
	}

	$scope.CollectFiles = function (files, itemRow) {
		var exisitngFiles = [];
		angular.forEach(files, function (_file) {
			var filterFiles = itemRow.SelectedFiles.filter(function (_attach) {
				return _attach.name == _file.name;
			});
			if (filterFiles.length > 0) {
				exisitngFiles.push(_file.name);
			} else {
				itemRow.SelectedFiles.push(_file);
			}
		});
		if (exisitngFiles.length > 0) {
			$rootScope.DisaplyMessage('warning', 'Already exists :' +exisitngFiles.join(','));
		}
	}

	$scope.uploadindex = 0;
	$scope.UploadFiles = function () {
		$scope.uploadindex = 0;
		if ($scope.SelectedFiles && $scope.SelectedFiles.length) {
			angular.forEach($scope.SelectedFiles, function (selectedFile) {
				$scope.attachmentProgress.push({ key: getRandomId(), value: 'Uploading ' + selectedFile.name + '...' });
				Upload.upload({
					url: '/api/attach/' + $scope.ReportSelected.Formcode + '/' + $scope.form.Id,
					data: {
						files: selectedFile
					}
				}).then(function (response) {
					$timeout(function () {
						if (response.data == 'Uploaded') {
							$scope.attachmentProgress.push({ key: getRandomId(), value: selectedFile.name + ' has been uploaded succesfully.' });
						}
						$scope.uploadindex++;
						$scope.attachmentProgress.push({ key: getRandomId(), value: $scope.uploadindex + ' file/s processed out of ' + $scope.SelectedFiles.length });
						if ($scope.uploadindex === $scope.SelectedFiles.length) {
							//$log.log('uploadindex', $scope.uploadindex);
							//$log.log('SelectedFiles', $scope.SelectedFiles.length);
							$scope.formFinalMessages();
						}
					});
				}, function (response) {
					$scope.uploadindex++;
					$scope.attachmentProgress.push({ key: getRandomId(), value: $scope.uploadindex + ' file/s processed out of ' + $scope.SelectedFiles.length });
					if (response.status > 0) {
						var errorMsg = response.status + ': ' + response.data;
						$scope.attachmentProgress.push({ key: getRandomId(), value: selectedFile.name + ' has not been uploaded. Try upload again' });
						$log.log(errorMsg);
						$rootScope.DisaplyMessage('warning', selectedFile.name + ' has not been uploaded. Try upload again.');
					}
					if ($scope.uploadindex === $scope.SelectedFiles.length) {
						//$log.log('uploadindex', $scope.uploadindex);
						//$log.log('SelectedFiles', $scope.SelectedFiles.length);
						$scope.formFinalMessages();
					}
				}, function (evt) {
					//var element = angular.element(document.querySelector('#dvProgress' + uploadindex));
					//$scope.Progress = Math.min(100, parseInt(100.0 * evt.loaded / evt.total));
					//element.html('<div style="width: ' + $scope.Progress + '%">' + $scope.Progress + '%</div>');
				});
			});
		} else {
			if ($scope.form.FormStatus == 'Submitted') {
				$scope.SubmitProgress = 'Form submitted successfuly...!';
			} else {
				$scope.SubmitProgress = 'Form saved as Draft...!';
			}
			$scope.formFinalMessages();
		}
	};

	$scope.formFinalMessages = function () {
		$timeout(function () {
			$scope.IsSubmitting = false;
			$scope.showSubmittingMsg = false;
			$scope.entriesAttachments = [];
			$scope.OpenEntryForm();
			//$scope.GetAttachments();
			$scope.SelectedFiles = [];
			$scope.attachmentProgress = [];
			$scope.SubmitProgress = '';
			$scope.hideSubmitBtn = false;
		}, 3000);
		$rootScope.DisaplyMessage('success', 'Record has been saved successfully.');
	}

	$scope.SelectedFiles = [];
	$scope.OpenEntryForm = function () {
		$scope.ReportData = [];
		$scope.SelectedFiles = [];
		$scope.IsEntryBlocked = false;
		$scope.attachmentProgress = [];
		$scope.SubmitProgress = 'Please wait...';
		$scope.hideForm = false;
		$scope.IsSubmitClicked = false;
		$scope.ReportName = $scope.ReportSelected;
		$scope.HospitalName = $scope.PlaceSelected;
		$scope.form = {};
		$scope.form.Hospital_Id = $scope.PlaceSelected.Id;
		$scope.form.LightHouseHospitalId = $scope.PlaceSelected.HospitalId;
		//$scope.form.formCode = $scope.ReportSelected.Formcode;
		$scope.form.MonthIndex = $scope.MonthtSelected.value;
		$scope.form.MonthName = $scope.MonthtSelected.name;
		$scope.form.Year = $scope.YearSelected;

		switch ($scope.ReportSelected.Formcode.toLowerCase()) {
			case "tbl01":
				$scope.form.COE = [];
				$scope.COEaddRow();
				//$scope.viewPreviousReportData();
				break;
			case "tbl02":
				$scope.form.SOP = [];
				$scope.SOPaddRow();
				break;
			case "tbl03":
				$scope.form.ServiceExcellence = [];
				$scope.ServiceExcellenceaddRow();
				break;
			case "tbl04":
				$scope.InitiateConsultantConnect();
				break;
			case "tbl06":
				$scope.form.topincidents = [];
				$scope.topincidentsaddRow();
				$scope.viewPreviousReportData();
				break;
			case "tbl07":
				$scope.form.topcomplaints = [];
				$scope.topcomplaintsaddRow();
				$scope.viewPreviousReportData();
				break;
			case "tbl28":
				$scope.form.report1 = [];
				$scope.report1addRow();
				break;
			case "tbl29":
				$scope.form.report2 = [];
				$scope.report2addRow();
				break;
			case "tbl30":
				$scope.form.report3 = [];
				$scope.report3addRow();
				break;
			case "tbl31":
				$scope.form.report4 = [];
				$scope.report4addRow();
				break;
			case "tbl32":
				$scope.form.report5 = [];
				$scope.report5addRow();
				break;
			case "tbl33":
				$scope.form.report6 = [];
				$scope.report6addRow();
				break;
			case "tbl34":
				$scope.form.report7 = [];
				$scope.report7addRow();
				break;
			case "tbl35":
				$scope.form.report8 = [];
				$scope.report8addRow();
				break;
			case "tbl36":
				$scope.form.report9 = [];
				$scope.report9addRow();
				break;
			case "tbl37":
				$scope.form.report10 = [];
				$scope.report10addRow();
				break;
			case "tbl08":
				$scope.form.ComplianceBilling_Target = $scope.PlaceSelected.WOW_ComplianceBilling_Target;
				$scope.viewPreviousReportData();
				break;
			case "tbl09":
				$scope.form.CnCNursingStaff_Target = $scope.PlaceSelected.VOC_CnCNursingStaff_Target;
				$scope.form.HowPainManaged_Target = $scope.PlaceSelected.VOC_HowPainManaged_Target;
				$scope.form.CallBellResponse_Target = $scope.PlaceSelected.VOC_CallBellResponse_Target;
				$scope.viewPreviousReportData();
				break;
			default:
				//No action required
				break;
		}

		$scope.BarredMessage = 'Entry date has been closed. Last day to submit the entry was ' + $scope.PlaceSelected.EntryLastDate;
		if ($scope.PlaceSelected.EntryLastDate * 1 < $scope.todayDate) {
			$scope.IsEntryBlocked = true;
			$rootScope.ShowError = true;
			$rootScope.ErrorMessage = $scope.BarredMessage;
			$rootScope.DisaplyMessage('warning', $rootScope.ErrorMessage);
		}

		$scope.getFormData(false);
	}

	$scope.LatestANICEScore = 0;
	$scope.IsLookingForAniceScore = false;
	$scope.getAniceScore = function () {
		$scope.IsLookingForAniceScore = true;
		var inputdata = {};
		inputdata.LocationId = $scope.PlaceSelected.AniceID;
		inputdata.MonthIndex = $scope.MonthtSelected.value + 1;
		inputdata.Year = $scope.YearSelected;
		$http.post('/api/latestanicescore', JSON.stringify(inputdata)).then(function (response) {
			//$log.log('ANICE response', response);
			$scope.IsLookingForAniceScore = false;
			$scope.LatestANICEScore = response.data;
			if (!$scope.form.Score) {
				$scope.form.Score = response.data;
			}
		}, function (response) {
			$log.log("It's an Error", response);
			$rootScope.DisaplyMessage('danger', "Error whilte getting ANICE Score: " + response.data);
		});
	}

	$scope.getFormData = function (isSubmit) {
		$scope.IsSubmitClicked = false;
		if (!isSubmit) {
			$scope.IsLookingData = true;
		}
		$scope.formAttachments = [];
		$scope.entriesAttachments = [];
		var url = `/api/getform/${$scope.ReportSelected.Formcode}/${$scope.form.LightHouseHospitalId}/${$scope.form.Year}/${$scope.form.MonthIndex}`;
		$http({
			method: 'GET',
			url: url
		}).then(function successCallback(response) {
			//$log.log('response', response.data);
			$scope.IsLookingData = false;
			if (response.data) {
				if (response.data.length > 0) {
					switch ($scope.ReportSelected.Formcode.toLowerCase()) {
						case "tbl01":
							$scope.form.COE = response.data;
							angular.forEach($scope.form.COE, function (item) {
								item.SelectedFiles = [];
							});
							$scope.form.FormStatus = response.data[0].FormStatus;
							$scope.form.ReportName = response.data[0].ReportName;
							//To get the value from single record
							var numResult = response.data.filter(function (val) {
								return val.NoOfNursesAttended != null;
							});
							if (numResult.length > 0) {
								$scope.form.NoOfNursesAttended = numResult[0].NoOfNursesAttended;
							}
							$scope.form.Id = response.data[0].Id; // For upload documents
							break;
						case "tbl02":
							$scope.form.SOP = response.data;
							angular.forEach($scope.form.SOP, function (item) {
								item.SelectedFiles = [];
							});
							$scope.form.FormStatus = response.data[0].FormStatus;
							$scope.form.ReportName = response.data[0].ReportName;
							//To get the value from single record
							var numResult = response.data.filter(function (val) {
								return val.NoOfNursesTrained != null;
							});
							if (numResult.length > 0) {
								$scope.form.NoOfNursesTrained = numResult[0].NoOfNursesTrained;
								$scope.form.NoOfNursesCompetencyChecked = numResult[0].NoOfNursesCompetencyChecked;
								$scope.form.NoOfNursesPassed = numResult[0].NoOfNursesPassed;
								$scope.form.NoOfNursesRetrained = numResult[0].NoOfNursesRetrained;
							}
							$scope.form.Id = response.data[0].Id; // For upload documents
							break;
						case "tbl03":
							$scope.form.ServiceExcellence = response.data;
							angular.forEach($scope.form.ServiceExcellence, function (item) {
								item.SelectedFiles = [];
							});
							$scope.form.FormStatus = response.data[0].FormStatus;
							$scope.form.ReportName = response.data[0].ReportName;
							//To get the value from single record
							var numResult = response.data.filter(function (val) {
								return val.NoOfPatients != null;
							});
							if (numResult.length > 0) {
								$scope.form.NoOfPatients = numResult[0].NoOfPatients;
								$scope.form.Participant = response.data[0].Participant;
							}
							$scope.form.Id = response.data[0].Id;
							break;
						case "tbl04":
							$scope.form.CCTopConsultants = response.data.filter(function (item) {
								return item.SelectionType == 'Consultant';
							});
							$scope.form.CCTopComplaints = response.data.filter(function (item) {
								return item.SelectionType == 'Complaint';
							});
							//To set attachments
							angular.forEach($scope.form.CCTopConsultants, function (item) {
								item.SelectedFiles = [];
							});
							angular.forEach($scope.form.CCTopComplaints, function (item) {
								item.SelectedFiles = [];
							});

							$scope.fillConsultantConnect();
							$scope.form.FormStatus = response.data[0].FormStatus;
							$scope.form.Id = response.data[0].Id; // For upload documents
							break;
						case "tbl06":
							$scope.form.topincidents = response.data;
							angular.forEach($scope.form.topincidents, function (item) {
								item.SelectedFiles = [];
							});
							$scope.form.FormStatus = response.data[0].FormStatus;
							$scope.form.Id = response.data[0].Id; // For upload documents
							break;
						case "tbl07":
							$scope.form.topcomplaints = response.data;
							angular.forEach($scope.form.topcomplaints, function (item) {
								item.SelectedFiles = [];
							});
							$scope.form.FormStatus = response.data[0].FormStatus;
							$scope.form.Id = response.data[0].Id; // For upload documents
							break;
						case "tbl10":
							$scope.form = response.data[0];
							if ($scope.form.FormStatus != 'Submitted' && !$scope.IsEntryBlocked) {
								$scope.LatestANICEScore = 0;
								$scope.getAniceScore();
							}
							break;
						case "tbl28":
							$scope.form.report1 = response.data;
							angular.forEach($scope.form.report1, function (item) {
								item.SelectedFiles = [];
							});
							$scope.form.FormStatus = response.data[0].FormStatus;
							$scope.form.Id = response.data[0].Id; // For upload documents
							break;
						case "tbl29":
							$scope.form.report2 = response.data;
							angular.forEach($scope.form.report2, function (item) {
								item.SelectedFiles = [];
							});
							$scope.form.FormStatus = response.data[0].FormStatus;
							$scope.form.Id = response.data[0].Id; // For upload documents
							break;
						case "tbl30":
							$scope.form.report3 = response.data;
							angular.forEach($scope.form.report3, function (item) {
								item.SelectedFiles = [];
							});
							$scope.form.FormStatus = response.data[0].FormStatus;
							$scope.form.Id = response.data[0].Id; // For upload documents
							break;
						case "tbl31":
							$scope.form.report4 = response.data;
							angular.forEach($scope.form.report4, function (item) {
								item.SelectedFiles = [];
							});
							$scope.form.FormStatus = response.data[0].FormStatus;
							$scope.form.Id = response.data[0].Id; // For upload documents
							break;
						case "tbl32":
							$scope.form.report5 = response.data;
							angular.forEach($scope.form.report5, function (item) {
								item.SelectedFiles = [];
							});
							$scope.form.FormStatus = response.data[0].FormStatus;
							$scope.form.Id = response.data[0].Id; // For upload documents
							break;
						case "tbl33":
							$scope.form.report6 = response.data;
							angular.forEach($scope.form.report6, function (item) {
								item.SelectedFiles = [];
							});
							$scope.form.FormStatus = response.data[0].FormStatus;
							$scope.form.Id = response.data[0].Id; // For upload documents
							break;
						case "tbl34":
							$scope.form.report7 = response.data;
							angular.forEach($scope.form.report7, function (item) {
								item.SelectedFiles = [];
							});
							$scope.form.FormStatus = response.data[0].FormStatus;
							$scope.form.Id = response.data[0].Id; // For upload documents
							break;
						case "tbl35":
							$scope.form.report8 = response.data;
							angular.forEach($scope.form.report8, function (item) {
								item.SelectedFiles = [];
							});
							$scope.form.FormStatus = response.data[0].FormStatus;
							$scope.form.Id = response.data[0].Id; // For upload documents
							break;
						case "tbl36":
							$scope.form.report9 = response.data;
							angular.forEach($scope.form.report9, function (item) {
								item.SelectedFiles = [];
							});
							$scope.form.FormStatus = response.data[0].FormStatus;
							$scope.form.Id = response.data[0].Id; // For upload documents
							break;
						case "tbl37":
							$scope.form.report10 = response.data;
							angular.forEach($scope.form.report10, function (item) {
								item.SelectedFiles = [];
							});
							$scope.form.FormStatus = response.data[0].FormStatus;
							$scope.form.Id = response.data[0].Id; // For upload documents
							break;
						default:
							$scope.form = response.data[0];
							$scope.form.Id = response.data[0].Id;
							//No action required for other forms
							break;
					}
					//Check Attachments
					if (!isSubmit) {
						$scope.GetAttachments();
					} else {
						$scope.UploadFiles();
					}
				} else {
					if (isSubmit) {
						$rootScope.DisaplyMessage('danger', 'There is an error in saving your form. Please try again.');
					} else {
						if ($scope.ReportSelected.Formcode.toLowerCase() == "tbl10" && !$scope.IsEntryBlocked) {
							$scope.LatestANICEScore = 0;
							$scope.getAniceScore();
						}
					}
				}
			} else {
				if (isSubmit) {
					$rootScope.DisaplyMessage('danger', 'There is an error in saving your form. Please try again.');
				}
			}
		}, function errorCallback(err) {
			$scope.IsLookingData = false;
			$rootScope.DisaplyMessage('danger', err.data);
			if (err.status == 401) {
				location.href = '/Login';
			}
		});
	}

	$scope.EntriesCount = 0;
	$scope.EntryProcessedCount = 0;
	$scope.SaveForm = function (statusVal) {
		if (statusVal == 'Submitted') {
			$scope.IsSubmitClicked = true;
			if (!$scope.ValidateFrom()) {
				$timeout(function () {
					$scope.IsValidForm = true;
				}, 3000);
				return false;
			}
			if (!confirm('You are about to submit and lock the form. Are you sure to submit?')) {
				return false;
			}
		}
		$scope.IsSubmitting = true;
		$scope.hideSubmitBtn = true;
		$scope.showSubmittingMsg = true;
		$scope.SubmitProgress = 'Please wait... your changes are getting saved...';

		$scope.form.FormStatus = statusVal;
		$scope.entryAttachmentsCount = 0;
		var url = `/api/save/${$scope.ReportSelected.Formcode}`;
		var data = $scope.form;
		if ($scope.multipleEntriesForms.indexOf($scope.ReportSelected.Formcode.toLowerCase()) > -1) {
			switch ($scope.ReportSelected.Formcode.toLowerCase()) {
				case "tbl01":
					angular.forEach(($scope.form.COE), function (val, i) {
						val.FormStatus = statusVal;
						val.ReportName = $scope.form.ReportName;
						//To store the value in top record
						if (i === 0) {
							val.NoOfNursesAttended = $scope.form.NoOfNursesAttended;
						} else {
							val.NoOfNursesAttended = null;
						}
						$scope.entryAttachmentsCount += val.SelectedFiles.length;
					});
					data = $scope.form.COE;
					break;
				case "tbl02":
					angular.forEach(($scope.form.SOP), function (val, i) {
						val.FormStatus = statusVal;
						val.ReportName = $scope.form.ReportName;
						//To store the value in top record
						if (i === 0) {
							val.NoOfNursesTrained = $scope.form.NoOfNursesTrained;
							val.NoOfNursesCompetencyChecked = $scope.form.NoOfNursesCompetencyChecked;
							val.NoOfNursesPassed = $scope.form.NoOfNursesPassed;
							val.NoOfNursesRetrained = $scope.form.NoOfNursesRetrained;
						} else {
							val.NoOfNursesTrained = null;
							val.NoOfNursesCompetencyChecked = null;
							val.NoOfNursesPassed = null;
							val.NoOfNursesRetrained = null;
						}
						$scope.entryAttachmentsCount += val.SelectedFiles.length;
					});
					data = $scope.form.SOP;
					break;
				case "tbl03":
					angular.forEach(($scope.form.ServiceExcellence), function (val, i) {
						val.FormStatus = statusVal;
						val.ReportName = $scope.form.ReportName;
						//To store the value in top record
						if (i === 0) {
							val.NoOfPatients = $scope.form.NoOfPatients;
							val.Participant = $scope.form.Participant;
						} else {
							val.NoOfPatients = null;
						}
						$scope.entryAttachmentsCount += val.SelectedFiles.length;
					});
					data = $scope.form.ServiceExcellence;
					break;
				case "tbl04":
					angular.forEach(($scope.form.CCTopConsultants), function (val) {
						val.FormStatus = statusVal;
						$scope.entryAttachmentsCount += val.SelectedFiles.length;
					});
					angular.forEach(($scope.form.CCTopComplaints), function (val) {
						val.FormStatus = statusVal;
						$scope.entryAttachmentsCount += val.SelectedFiles.length;
					});
					var consolidatedData = $scope.form.CCTopConsultants.concat($scope.form.CCTopComplaints);
					//$log.log('consolidatedData', consolidatedData);
					//Get only non empty data
					data = consolidatedData.filter(function (val) {
						return val.Id > 0 || !(!val.ConsultantsInvolved && !val.ConsultantComplaints && !val.PostComplaintAction && !val.ConsultantFeedback && !val.AdditionalMentions && !val.Remarks);
					});
					break;
				case "tbl06":
					angular.forEach(($scope.form.topincidents), function (val, index) {
						if (val.OrderNumber == 0) {
							val.OrderNumber = index + 1;
						}
						$scope.entryAttachmentsCount += val.SelectedFiles.length;
						val.FormStatus = statusVal;
					});
					data = $scope.form.topincidents;
					break;
				case "tbl07":
					angular.forEach(($scope.form.topcomplaints), function (val, index) {
						if (val.OrderNumber == 0) {
							val.OrderNumber = index + 1;
						}
						$scope.entryAttachmentsCount += val.SelectedFiles.length;
						val.FormStatus = statusVal;
					});
					data = $scope.form.topcomplaints;
					break;
				case "tbl28":
					angular.forEach($scope.form.report1, function (val, index) {
						if (val.OrderNumber == 0) {
							val.OrderNumber = index + 1;
						}
						$scope.entryAttachmentsCount += val.SelectedFiles.length;
						val.FormStatus = statusVal;
					});
					data = $scope.form.report1;
					break;
				case "tbl29":
					angular.forEach($scope.form.report2, function (val, index) {
						if (val.OrderNumber == 0) {
							val.OrderNumber = index + 1;
						}
						$scope.entryAttachmentsCount += val.SelectedFiles.length;
						val.FormStatus = statusVal;
					});
					data = $scope.form.report2;
					break;
				case "tbl30":
					angular.forEach($scope.form.report3, function (val, index) {
						if (val.OrderNumber == 0) {
							val.OrderNumber = index + 1;
						}
						$scope.entryAttachmentsCount += val.SelectedFiles.length;
						val.FormStatus = statusVal;
					});
					data = $scope.form.report3;
					break;
				case "tbl31":
					angular.forEach($scope.form.report4, function (val, index) {
						if (val.OrderNumber == 0) {
							val.OrderNumber = index + 1;
						}
						$scope.entryAttachmentsCount += val.SelectedFiles.length;
						val.FormStatus = statusVal;
					});
					data = $scope.form.report4;
					break;
				case "tbl32":
					angular.forEach($scope.form.report5, function (val, index) {
						if (val.OrderNumber == 0) {
							val.OrderNumber = index + 1;
						}
						$scope.entryAttachmentsCount += val.SelectedFiles.length;
						val.FormStatus = statusVal;
					});
					data = $scope.form.report5;
					break;
				case "tbl33":
					angular.forEach($scope.form.report6, function (val, index) {
						if (val.OrderNumber == 0) {
							val.OrderNumber = index + 1;
						}
						$scope.entryAttachmentsCount += val.SelectedFiles.length;
						val.FormStatus = statusVal;
					});
					data = $scope.form.report6;
					break;
				case "tbl34":
					angular.forEach($scope.form.report7, function (val, index) {
						if (val.OrderNumber == 0) {
							val.OrderNumber = index + 1;
						}
						$scope.entryAttachmentsCount += val.SelectedFiles.length;
						val.FormStatus = statusVal;
					});
					data = $scope.form.report7;
					break;
				case "tbl35":
					angular.forEach($scope.form.report8, function (val, index) {
						if (val.OrderNumber == 0) {
							val.OrderNumber = index + 1;
						}
						$scope.entryAttachmentsCount += val.SelectedFiles.length;
						val.FormStatus = statusVal;
					});
					data = $scope.form.report8;
					break;
				case "tbl36":
					angular.forEach($scope.form.report9, function (val, index) {
						if (val.OrderNumber == 0) {
							val.OrderNumber = index + 1;
						}
						$scope.entryAttachmentsCount += val.SelectedFiles.length;
						val.FormStatus = statusVal;
					});
					data = $scope.form.report9;
					break;
				case "tbl37":
					angular.forEach($scope.form.report10, function (val, index) {
						if (val.OrderNumber == 0) {
							val.OrderNumber = index + 1;
						}
						$scope.entryAttachmentsCount += val.SelectedFiles.length;
						val.FormStatus = statusVal;
					});
					data = $scope.form.report10;
					break;
				default:
					//Not required
					break;
			}
		}

		//$log.log('final data', data);
		//return false;

		//************Process the entiries -- If -> For multiple entries. Else-> For single entry and single attachment*******//
		$scope.uploadindex = 0;
		$scope.EntryProcessedCount = 0;
		if ($scope.multipleEntriesForms.indexOf($scope.ReportSelected.Formcode.toLowerCase()) > -1) {
			$scope.EntriesCount = data.length;
			angular.forEach(data, function (item) {
				$scope.SaveEntry(item);
			});
		} else {
			$http.post(url, JSON.stringify(data)).then(function (response) {
				//$log.log('response', response);
				if ($scope.form.FormStatus == 'Submitted') {
					$scope.SubmitProgress = 'Form submitted successfuly...! Looking for attachments...';
				} else {
					$scope.SubmitProgress = 'Form saved as Draft...! Looking for attachments...';
				}
				$scope.getFormData(true);
			}, function (response) {
				$log.log("It's an Error", response);
				$rootScope.DisaplyMessage('danger', response.data);
				//Reset form
				$scope.IsSubmitting = false;
				$scope.showSubmittingMsg = false;
				$scope.attachmentProgress = [];
				$scope.SubmitProgress = '';
				$scope.hideSubmitBtn = false;
			});
		}
	}

	$scope.entryAttachmentsCount = 0;
	$scope.SaveEntry = function (inputdata) {
		var url = `/api/save/${$scope.ReportSelected.Formcode}`;
		$http.post(url, JSON.stringify(inputdata)).then(function (response) {
			$scope.EntryProcessedCount++;
			$scope.SubmitProgress = 'Processing your inputs...';
			if (response.data != "Updated") {
				inputdata.Id = parseInt(response.data);
			}
			if (inputdata.SelectedFiles.length > 0) {
				$scope.UploadEntryAttachments(inputdata);
			}

			if ($scope.EntryProcessedCount === $scope.EntriesCount && $scope.entryAttachmentsCount == 0) {
				$scope.formFinalMessages();
			}
		}, function (response) {
			$scope.EntryProcessedCount++;
			$log.log("It's an Error", response);
			$rootScope.DisaplyMessage('danger', response.data);
			//Reset form
			$scope.IsSubmitting = false;
			$scope.showSubmittingMsg = false;
			$scope.attachmentProgress = [];
			$scope.SubmitProgress = '';
			$scope.hideSubmitBtn = false;
			if ($scope.EntryProcessedCount === $scope.EntriesCount) {
				$scope.formFinalMessages();
			}
		});
	}

	$scope.UploadEntryAttachments = function (inputdata) {
		if (inputdata.SelectedFiles && inputdata.SelectedFiles.length) {
			//$log.log(inputdata.Id, 'Processing attachments');
			angular.forEach(inputdata.SelectedFiles, function (selectedFile) {
				$scope.attachmentProgress.push({ key: getRandomId(), value: 'Uploading ' + selectedFile.name + '...' });
				Upload.upload({
					url: '/api/attach/' + $scope.ReportSelected.Formcode + '/' + inputdata.Id,
					data: {
						files: selectedFile
					}
				}).then(function (response) {
					$scope.uploadindex++;
					$timeout(function () {
						if (response.data == 'Uploaded') {
							$scope.attachmentProgress.push({ key: getRandomId(), value: selectedFile.name + ' has been uploaded succesfully.' });
						}

						$scope.attachmentProgress.push({ key: getRandomId(), value: $scope.uploadindex + ' file/s processed out of ' + $scope.entryAttachmentsCount });
					});
					//$log.log('uploadindex',$scope.uploadindex);
					//$log.log('entryAttachmentsCount', $scope.entryAttachmentsCount);
					if ($scope.uploadindex === $scope.entryAttachmentsCount) {
						$scope.formFinalMessages();
					}
				}, function (response) {
					$scope.uploadindex++;
					$scope.attachmentProgress.push($scope.uploadindex + ' file/s processed out of ' + $scope.entryAttachmentsCount);
					if (response.status > 0) {
						var errorMsg = response.status + ': ' + response.data;
						$scope.attachmentProgress.push({ key: getRandomId(), value: selectedFile.name + ' has not been uploaded. Try upload again' });
						$log.log(errorMsg);
						$rootScope.DisaplyMessage('warning', selectedFile.name + ' has not been uploaded. Try upload again.');
					}
					if ($scope.uploadindex === $scope.entryAttachmentsCount) {
						$scope.formFinalMessages();
					}
				}, function (evt) {
					//var element = angular.element(document.querySelector('#dvProgress' + uploadindex));
					//$scope.Progress = Math.min(100, parseInt(100.0 * evt.loaded / evt.total));
					//element.html('<div style="width: ' + $scope.Progress + '%">' + $scope.Progress + '%</div>');
				});
			});
		} else {
			$log.log(inputdata.Id, 'No attachment found');
		}
	};

	function getRandomId() {
		return Math.floor((Math.random() * 10000) + 1);
	}

	$scope.IsDeleting = false;
	$scope.removeAttachment = function (attachID) {
		if (confirm('Are you sure to delete the attachment?')) {
			$scope.IsDeleting = true;
			$scope.DeleteAttachment(attachID);
		}
	}

	$scope.DeleteAttachment = function (attachID) {
		$http({
			method: 'POST',
			url: '/api/deleteattachment?formCode=' + $scope.ReportSelected.Formcode + '&attachId=' + attachID
		}).then(function successCallback(response) {
			$rootScope.DisaplyMessage('success', response.data);
			$scope.IsDeleting = false;
			$scope.GetAttachments();
		}, function errorCallback(err) {
			$log.log('danger', err);
			$scope.IsDeleting = false;
			$rootScope.DisaplyMessage('danger', err.data);
			if (err.status == 401) {
				location.href = '/Login';
			}
		});
	}

	$scope.checkReportChange = function () {
		if ($scope.ReportName != $scope.ReportSelected) {
			$scope.hideForm = true;
		}
		if ($scope.PlaceSelected != $scope.HospitalName) {
			$scope.hideForm = true;
		}
	}

	$scope.GetAttachments = function () {
		$scope.entriesAttachments = [];
		if ($scope.ReportSelected.Formcode) {
			if ($scope.multipleEntriesForms.indexOf($scope.ReportSelected.Formcode.toLowerCase()) > -1) {
				var formRecords = [];
				switch ($scope.ReportSelected.Formcode.toLowerCase()) {
					case "tbl01":
						formRecords = $scope.form.COE;
						break;
					case "tbl02":
						formRecords = $scope.form.SOP;
						break;
					case "tbl03":
						formRecords = $scope.form.ServiceExcellence;
						break;
					case "tbl04":
						formRecords = $scope.form.CCTopConsultants.concat($scope.form.CCTopComplaints);
						break;
					case "tbl06":
						formRecords = $scope.form.topincidents;
						break;
					case "tbl07":
						formRecords = $scope.form.topcomplaints;
						break;
					case "tbl28":
						formRecords = $scope.form.report1;
						break;
					case "tbl29":
						formRecords = $scope.form.report2;
						break;
					case "tbl30":
						formRecords = $scope.form.report3;
						break;
					case "tbl31":
						formRecords = $scope.form.report4;
						break;
					case "tbl32":
						formRecords = $scope.form.report5;
						break;
					case "tbl33":
						formRecords = $scope.form.report6;
						break;
					case "tbl34":
						formRecords = $scope.form.report7;
						break;
					case "tbl35":
						formRecords = $scope.form.report8;
						break;
					case "tbl36":
						formRecords = $scope.form.report9;
						break;
					case "tbl37":
						formRecords = $scope.form.report10;
						break;
					default:
						formRecords = [];
						alert('Could not find the attachments!');
						break;
				}
				angular.forEach(formRecords, function (item) {
					if (item.Id > 0) {
						$http({
							method: 'GET',
							url: '/api/attachments/' + $scope.ReportSelected.Formcode + '/' + item.Id
						}).then(function successCallback(response) {
							if (response.data.length > 0) {
								var resultArray = response.data;
								angular.forEach(resultArray, function (item) {
									item.fileLink = '/home/downloadfile?formCode=' + $scope.ReportSelected.Formcode + '&fileId=' + item.Id;
								});
								$scope.entriesAttachments = $scope.entriesAttachments.concat(resultArray);
								//$log.log('entriesAttachments', $scope.entriesAttachments);
							}
						}, function errorCallback(err) {
							$log.log('danger', err);
							$rootScope.DisaplyMessage('danger', err.data);
							if (err.status == 401) {
								location.href = '/Login';
							}
						});
					}
				});
			} else {
				$http({
					method: 'GET',
					url: '/api/attachments/' + $scope.ReportSelected.Formcode + '/' + $scope.form.Id
				}).then(function successCallback(response) {
					$scope.formAttachments = response.data;
					angular.forEach($scope.formAttachments, function (item) {
						item.fileLink = '/home/downloadfile?formCode=' + $scope.ReportSelected.Formcode + '&fileId=' + item.Id;
					});
					//$log.log('attachments', $scope.formAttachments);
				}, function errorCallback(err) {
					$log.log('danger', err);
					$rootScope.DisaplyMessage('danger', err.data);
					if (err.status == 401) {
						location.href = '/Login';
					}
				});
			}
		} else {
			alert('Form code not found');
			$rootScope.DisaplyMessage('danger', 'Form code not found');
		}
	}

	$scope.ValidateFrom = function () {
		$scope.IsValidForm = true;
		switch ($scope.ReportSelected.Formcode) {
			case "TBL01" /*COE*/:
				if (!$scope.form.NoOfNursesAttended || !$scope.form.ReportName) {
					$scope.IsValidForm = false;
				}
				angular.forEach($scope.form.COE, function (item) {
					if (!item.ConsultantsInvolved || !item.NatureOfActivityDone || !item.ConsultantFeedback || !item.ActionTaken) {
						$scope.IsValidForm = false;
					}
				});
				break;
			case "TBL02" /*SOP*/:
				if (!$scope.form.NoOfNursesTrained || !$scope.form.NoOfNursesCompetencyChecked || !$scope.form.NoOfNursesPassed || !$scope.form.NoOfNursesRetrained || !$scope.form.ReportName) {
					$scope.IsValidForm = false;
				}
				angular.forEach($scope.form.SOP, function (item) {
					if (!item.ConsultantInvolved || !item.ConsultantFeedback || !item.AdditionalMentions || !item.Remarks) {
						$scope.IsValidForm = false;
					}
				});
				break;
			case "TBL03" /*ServiceExcellence*/:
				if (!$scope.form.NoOfPatients || !$scope.form.Participant || !$scope.form.ReportName) {
					$scope.IsValidForm = false;
				}
				angular.forEach($scope.form.ServiceExcellence, function (item) {
					if (!item.PatientFamilyFeedback || !item.StaffFeedback || !item.ConsultantFeedback || !item.Remarks) {
						$scope.IsValidForm = false;
					}
				});
				break;
			case "TBL04" /*Consultant Connect*/:
				angular.forEach($scope.form.CCTopConsultants, function (item) {
					if (!item.ConsultantsInvolved || !item.ConsultantComplaints || !item.PostComplaintAction || !item.ConsultantFeedback || !item.AdditionalMentions) {
						$scope.IsValidForm = false;
					}
				});
				angular.forEach($scope.form.CCTopComplaints, function (item) {
					if (!item.ConsultantsInvolved || !item.ConsultantComplaints || !item.PostComplaintAction || !item.ConsultantFeedback || !item.AdditionalMentions) {
						$scope.IsValidForm = false;
					}
				});
				break;
			case "TBL05" /*Process Improvement*/:
				if (!$scope.form.CriticalLabValue || !$scope.form.BloodTransfusion || !$scope.form.POCT || !$scope.form.ClinicalHandOff || !$scope.form.ComplianceMedicationErrors || !$scope.form.ComplianceBloodSugar || !$scope.form.ReasonsNotAchieve || !$scope.form.AdditionalMentions || !$scope.form.Remarks) {
					$scope.IsValidForm = false;
				}

				break;
			case "TBL06" /*Top 5 Incidents*/:
				angular.forEach($scope.form.topincidents, function (item) {
					if (!item.NameOfIncident || !item.NumberOfIncidents || !item.ActionTaken) {
						$scope.IsValidForm = false;
					}
				});
				break;
			case "TBL07" /*Top 5 complaints*/:
				angular.forEach($scope.form.topcomplaints, function (item) {
					if (!item.NameOfComplaint || !item.NumberOfComplaints || !item.ActionTaken) {
						$scope.IsValidForm = false;
					}
				});
				break;
			case "TBL08" /*WOW Saving*/:
				if (!$scope.form.SC_MT_Expenditure || !$scope.form.SC_TargetSaving || !$scope.form.SC_Achievement || !$scope.form.ComplianceBilling_Target || !$scope.form.ComplianceBilling_Achievement || !$scope.form.Remarks) {
					$scope.IsValidForm = false;
				}
				break;
			case "TBL09" /*VOC Score*/:
				if (
					!$scope.form.CnCNursingStaff_Score ||
					!$scope.form.HowPainManaged_Score ||
					!$scope.form.CallBellResponse_Score
				) {
					$scope.IsValidForm = false;
				}
				break;
			case "TBL10" /*ANICE Score*/:
				if (!$scope.form.Score || !$scope.form.Remarks) {
					$scope.IsValidForm = false;
				}
				break;
			case "TBL11" /*Manpower(Based on the average occupancy of the month)*/:
				if (!$scope.form.SanctionedManpower || !$scope.form.ExistingManpower || !$scope.form.Remarks) {
					$scope.IsValidForm = false;
				}
				break;
			case "TBL12" /*Training Initiatives*/:
				if (!$scope.form.TopicsCovered || !$scope.form.PercentageCompliance || !$scope.form.Remarks) {
					$scope.IsValidForm = false;
				}

				break;
			case "TBL13" /*English Communication*/:
				if (!$scope.form.NoOfNurseTrained || !$scope.form.Initiatives || !$scope.form.Outcome || !$scope.form.Remarks) {
					$scope.IsValidForm = false;
				}
				break;
			case "TBL14" /*Reinforcement Communication*/:
				if (!$scope.form.NoOfNurseTrained || !$scope.form.Theme || !$scope.form.Outcome || !$scope.form.Remarks) {
					$scope.IsValidForm = false;
				}
				break;
			case "TBL15" /*Town Hall*/:
				if (!$scope.form.PointsOfDiscussion || !$scope.form.NoOfAttendee || !$scope.form.Remarks) {
					$scope.IsValidForm = false;
				}

				break;
			case "TBL16" /*CFT*/:
				if (!$scope.form.Members || !$scope.form.Details || !$scope.form.Learnings || !$scope.form.Remarks) {
					$scope.IsValidForm = false;
				}

				break;
			case "TBL17" /*Research and Publication(R & P)*/:
				if (!$scope.form.Members || !$scope.form.TopicsAssigned || !$scope.form.Remarks) {
					$scope.IsValidForm = false;
				}

				break;
			case "TBL18" /*Academic Council*/:
				if (!$scope.form.Members || !$scope.form.TopicsAssigned || !$scope.form.Remarks) {
					$scope.IsValidForm = false;
				}

				break;
			case "TBL19" /*Best Practices*/:
				if (!$scope.form.BestPractices || !$scope.form.Remarks) {
					$scope.IsValidForm = false;
				}

				break;
			case "TBL20" /*Achievements*/:
				if (!$scope.form.Details || !$scope.form.Remarks) {
					$scope.IsValidForm = false;
				}

				break;
			case "TBL21" /*Appreciation*/:
				if (!$scope.form.Details || !$scope.form.Remarks) {
					$scope.IsValidForm = false;
				}

				break;
			case "TBL22" /*Challenges*/:
				if (!$scope.form.Challenges || !$scope.form.Remarks) {
					$scope.IsValidForm = false;
				}

				break;
			case "TBL23" /*Process Standardization */:
				if (!$scope.form.PCI || !$scope.form.Impact || !$scope.form.Remarks) {
					$scope.IsValidForm = false;
				}

				break;

			case "TBL24" /*NHNE */:
				if (
					!$scope.form.DOC ||
					!$scope.form.PCT ||
					!$scope.form.NoOfIBI ||
					!$scope.form.Remarks
				) {
					$scope.IsValidForm = false;
				}

				break;
			case "TBL25" /*Quality Improvement */:
				if (
					!$scope.form.DetailsOfCustodians ||
					!$scope.form.PCT ||
					!$scope.form.Remarks
				) {
					$scope.IsValidForm = false;
				}

				break;
			case "TBL26" /*Digitization */:
				if (
					!$scope.form.TechnologyAdopted ||
					!$scope.form.PCT ||
					!$scope.form.Impact ||
					!$scope.form.Remarks
				) {
					$scope.IsValidForm = false;
				}

				break;
			case "TBL27" /*StaffEngagement */:
				if (
					!$scope.form.NumberOfNursesInvolved ||
					!$scope.form.PCA ||
					!$scope.form.Remarks
				) {
					$scope.IsValidForm = false;
				}
				break;
			case "TBL28" /*Report 1*/:
				angular.forEach($scope.form.report1, function (item) {
					if (
						!item.ReportName ||
						!item.Details ||
						!item.Field1 ||
						!item.Field2 ||
						!item.Field3
					) {
						$scope.IsValidForm = false;
					}
				});
				break;
			case "TBL29" /*Report 2*/:
				angular.forEach($scope.form.report2, function (item) {
					if (
						!item.ReportName ||
						!item.Details ||
						!item.Field1 ||
						!item.Field2 ||
						!item.Field3
					) {
						$scope.IsValidForm = false;
					}
				});
				break;
			case "TBL30" /*Report 3*/:
				angular.forEach($scope.form.report3, function (item) {
					if (
						!item.ReportName ||
						!item.Details ||
						!item.Field1 ||
						!item.Field2 ||
						!item.Field3
					) {
						$scope.IsValidForm = false;
					}
				});
				break;
			case "TBL31" /*Report 4*/:
				angular.forEach($scope.form.report4, function (item) {
					if (
						!item.ReportName ||
						!item.Details ||
						!item.Field1 ||
						!item.Field2 ||
						!item.Field3
					) {
						$scope.IsValidForm = false;
					}
				});
				break;
			case "TBL32" /*Report 5*/:
				angular.forEach($scope.form.report5, function (item) {
					if (
						!item.ReportName ||
						!item.Details ||
						!item.Field1 ||
						!item.Field2 ||
						!item.Field3
					) {
						$scope.IsValidForm = false;
					}
				});
				break;
			case "TBL33" /*Report 6*/:
				angular.forEach($scope.form.report6, function (item) {
					if (
						!item.ReportName ||
						!item.Details ||
						!item.Field1 ||
						!item.Field2 ||
						!item.Field3
					) {
						$scope.IsValidForm = false;
					}
				});
				break;
			case "TBL34" /*Report 7*/:
				angular.forEach($scope.form.report7, function (item) {
					if (
						!item.ReportName ||
						!item.Details ||
						!item.Field1 ||
						!item.Field2 ||
						!item.Field3
					) {
						$scope.IsValidForm = false;
					}
				});
				break;
			case "TBL35" /*Report 8*/:
				angular.forEach($scope.form.report8, function (item) {
					if (
						!item.ReportName ||
						!item.Details ||
						!item.Field1 ||
						!item.Field2 ||
						!item.Field3
					) {
						$scope.IsValidForm = false;
					}
				});
				break;
			case "TBL36" /*Report 9*/:
				angular.forEach($scope.form.report9, function (item) {
					if (
						!item.ReportName ||
						!item.Details ||
						!item.Field1 ||
						!item.Field2 ||
						!item.Field3
					) {
						$scope.IsValidForm = false;
					}
				});
				break;
			case "TBL37" /*Report 10*/:
				angular.forEach($scope.form.report10, function (item) {
					if (
						!item.ReportName ||
						!item.Details ||
						!item.Field1 ||
						!item.Field2 ||
						!item.Field3
					) {
						$scope.IsValidForm = false;
					}
				});
				break;
		}
		return $scope.IsValidForm;
	}
}]);

nursingApp.controller("reportController", ['$scope', '$rootScope', '$http', '$interval', '$log', 'Upload', '$timeout', '$q', function ($scope, $rootScope, $http, $interval, $log, Upload, $timeout, $q) {
	$rootScope.NavLocation = 'Report';
	$scope.IsLookingData = false;
	var promise;
	$scope.UserMappedHospitals = [];
	$scope.MappedRegions = [];
	$scope.report = [];
	var allObj = {
		"Id": 0,
		"Formcode": "All",
		"FormName": "All",
		"FormDisplayName": "All",
		"TableName": "All",
		"IsActive": true,
		"Created": "2021-11-12T10:20:16.987"
	};

	$scope.IsSubmitClicked = false;
	$scope.IsValidForm = true;

	$scope.setStartEndDate = function () {
		$scope.StartDate = new Date($scope.StartYearSelected, $scope.StartMonthtSelected.value, 1);
		$scope.EndDate = new Date($scope.EndYearSelected, $scope.EndMonthtSelected.value, 25);
	}

	$scope.getCurrentYear = function () {
		var currentTime = new Date();
		//$scope.yearData = [currentTime.getFullYear() - 1, currentTime.getFullYear() - 2, currentTime.getFullYear(), currentTime.getFullYear() + 1, currentTime.getFullYear() + 2];
		$scope.yearData = [currentTime.getFullYear() - 2, currentTime.getFullYear() - 1, currentTime.getFullYear(), currentTime.getFullYear() + 1, currentTime.getFullYear() + 2];
		$scope.StartYearSelected = currentTime.getFullYear();
		$scope.EndYearSelected = currentTime.getFullYear();
		$scope.monthData = [
			{ "name": "Jan", value: 0 },
			{ "name": "Feb", value: 1 },
			{ "name": "Mar", value: 2 },
			{ "name": "Apr", value: 3 },
			{ "name": "May", value: 4 },
			{ "name": "Jun", value: 5 },
			{ "name": "Jul", value: 6 },
			{ "name": "Aug", value: 7 },
			{ "name": "Sept", value: 8 },
			{ "name": "Oct", value: 9 },
			{ "name": "Nov", value: 10 },
			{ "name": "Dec", value: 11 },
		];
		if (currentTime.getMonth() === 0) {
			$scope.StartYearSelected = currentTime.getFullYear() - 1;
			$scope.EndYearSelected = currentTime.getFullYear() - 1;
			$scope.StartMonthtSelected = $scope.monthData[11];
			$scope.EndMonthtSelected = $scope.monthData[11];
		} else {
			$scope.StartMonthtSelected = $scope.monthData[currentTime.getMonth() - 1];
			$scope.EndMonthtSelected = $scope.monthData[currentTime.getMonth() - 1];
		}
		$scope.setStartEndDate();
	}
	$scope.getCurrentYear();

	$http({
		method: 'GET',
		url: '/api/getallhospitals'
	}).then(function successCallback(response) {
		$scope.AllHospitalsList = response.data;
		$scope.start();
	}, function errorCallback(err) {
		$log.log('danger', err);
		$rootScope.DisaplyMessage('danger', err.data);
		if (err.status == 401) {
			location.href = '/Login';
		}
	});

	$http({
		method: 'GET',
		url: '/api/getallreports'
	}).then(function successCallback(response) {
		$scope.report = response.data;
		$scope.report.unshift(allObj);
	}, function errorCallback(err) {
		$log.log('danger', err);
		$rootScope.DisaplyMessage('danger', err.data);
	});

	$scope.start = function () {
		$scope.stop();
		promise = $interval(function () {
			if ($rootScope.currentUserObject) {
				$scope.mappedHospitals = $rootScope.currentUserObject.user_detail[0].location.map(function (value) {
					return parseInt(value);
				});
				$scope.stop();
				$scope.filterMappedLocations();
			} else {
				$log.log('looking for mapped hospitals....');
			}
		}, 1000);
	};

	$scope.stop = function () {
		$interval.cancel(promise);
	};

	$scope.$on('$destroy', function () {
		$scope.stop();
	});

	$scope.ChangeRegion = function () {
		$scope.PlaceSelected = [];
		if ($scope.RegionSelected.indexOf('All') > -1) {
			$scope.RegionSelected = ['All'];
			$scope.PlaceSelected = $scope.UserMappedHospitals;
		} else {
			$log.log($scope.RegionSelected);
			angular.forEach($scope.RegionSelected, function (region) {
				var filteredHospitals = $scope.UserMappedHospitals.filter(function (item) {
					return item.Region == region;
				});
				//$log.log('filteredHospitals',filteredHospitals);
				$scope.PlaceSelected = $scope.PlaceSelected.concat(filteredHospitals);
			});
		}
	}

	$scope.CheckAllReport = function () {
		var checkAll = $scope.ReportSelected.filter(function (item) {
			return item.Formcode == 'All';
		});
		if (checkAll.length > 0) {
			$scope.ReportSelected = [];
			$scope.ReportSelected.push(allObj);
		}
	}

	$scope.ResetSelection = function () {
		$scope.RegionSelected = [];
		$scope.PlaceSelected = [];
		$scope.ReportSelected = [];
		$scope.getCurrentYear();
		$scope.tabsReportsSelected = [];
		$scope.showTable = {};
		$scope.ReportData = [];
	}
	$scope.ResetSelection();

	$scope.filterMappedLocations = function () {
		//$scope.mappedHospitals = [10101, 10102, 10103, 10202]; //To test
		angular.forEach($scope.AllHospitalsList, function (hospital) {
			if ($scope.mappedHospitals.indexOf(hospital.HospitalId) > -1) {
				hospital.is_mapped = true;
			} else {
				hospital.is_mapped = false;
			}
		});
		$scope.UserMappedHospitals = $scope.AllHospitalsList.filter(function (item) {
			return item.is_mapped;
		});
		var filteredRegions = $scope.UserMappedHospitals.map(function (item) {
			return item.Region;
		});

		$scope.MappedRegions = filteredRegions.filter(function (item, pos) {
			return filteredRegions.indexOf(item) == pos;
		});
		if ($scope.MappedRegions.length > 1) {
			$scope.MappedRegions.unshift("All");
		}
		//Remove Empty
		if ($scope.MappedRegions.indexOf("") > -1) {
			$scope.MappedRegions.splice($scope.MappedRegions.indexOf(""), 1);
		}
	}

	$scope.allAttachments = [];
	$scope.viewAttachments = function (report) {
		$scope.allAttachments = [];
		$scope.ReportDetails = report;
		$http({
			method: 'GET',
			url: '/api/attachments/' + $scope.showTable.Formcode + '/' + report.Id
		}).then(function successCallback(response) {
			$scope.allAttachments = response.data;
			angular.forEach($scope.allAttachments, function (item) {
				item.fileLink = '/home/downloadfile?formCode=' + $scope.showTable.Formcode + '&fileId=' + item.Id;
			});
			//$log.log('attachments', $scope.allAttachments);
		}, function errorCallback(err) {
			$log.log('danger', err);
			$rootScope.DisaplyMessage('danger', err.data);
			if (err.status == 401) {
				location.href = '/Login';
			}
		});
	}

	$scope.IsExporting = false;
	$scope.ExportToExcel = function () {
		$scope.IsExporting = true;
		var self = this;

		var data = {};
		data.StartDate = $scope.StartDate;
		data.EndDate = $scope.EndDate;
		var locationsSelected = $scope.PlaceSelected.map(function (item) {
			return item.HospitalId;
		});
		data.ListOfHospitalsId = locationsSelected.join(',');
		var formCodeSelected = $scope.ReportSelected.map(function (item) {
			return item.Formcode;
		});
		if (formCodeSelected[0] == 'All') {
			formCodeSelected = $scope.report.map(function (item) {
				return item.Formcode;
			});
			//To Remove All
			formCodeSelected.splice(0, 1);
		}
		data.ListOfFormCode = formCodeSelected.join(',');

		var deferred = $q.defer();
		var param = JSON.stringify(data);
		var url = `/Home/Export?param=${param}`;
		var defaultFileName = `Nursing_Report-${$scope.StartMonthtSelected.name}_${$scope.StartYearSelected}-${$scope.EndMonthtSelected.name}_${$scope.EndYearSelected}.xlsx`;
		if ($scope.StartMonthtSelected == $scope.EndMonthtSelected && $scope.StartYearSelected == $scope.EndYearSelected) {
			defaultFileName = `Nursing_Report-${$scope.StartMonthtSelected.name}_${$scope.StartYearSelected}.xlsx`;
		}
		$http.get(url, { responseType: "arraybuffer" }).then(
			function (response) {
				var blob = new Blob([response.data], { type: { 'Content-Type': 'Content-Disposition' } });
				saveAs(blob, defaultFileName);
				deferred.resolve(defaultFileName);
				$scope.IsExporting = false;
				$rootScope.DisaplyMessage('success', "Export has been completed. Save the excel file when prompted.");
			}, function (data, status) {
				var e = /* error */
					deferred.reject(e);
				$scope.IsExporting = false;
				$rootScope.DisaplyMessage('danger', "Error while exporting the data.");
			});
		return deferred.promise;
	}

	$scope.tabsReportsSelected = [];
	$scope.viewReport = function () {
		$scope.IsLookingData = true;
		$scope.tabsReportsSelected = [];
		var formCodeSelected = $scope.ReportSelected.map(function (item) {
			return item.Formcode;
		});
		if (formCodeSelected[0] == 'All') {
			angular.copy($scope.report, $scope.tabsReportsSelected);
			//To Remove All
			$scope.tabsReportsSelected.splice(0, 1);
		} else {
			angular.copy($scope.ReportSelected, $scope.tabsReportsSelected);
		}
		$scope.showTableData($scope.tabsReportsSelected[0]);
	}

	$scope.viewReportData = function (formCode) {
		var data = {};
		data.StartDate = $scope.StartDate;
		data.EndDate = $scope.EndDate;
		var locationsSelected = $scope.PlaceSelected.map(function (item) {
			return item.HospitalId;
		});
		data.LightHouseHospitalId = locationsSelected.join(',');
		data.FormCode = formCode;
		var param = JSON.stringify(data);
		var url = `/api/getrecordsbyrange?param=${param}`;
		$http({
			method: 'GET',
			url: url
		}).then(function successCallback(response) {
			//$log.log(formCode, response);
			$scope.ReportData = response.data;
			$scope.IsLookingData = false;
		}, function errorCallback(err) {
			$log.log('danger', err);
			$scope.IsLookingData = false;
			$rootScope.DisaplyMessage('danger', err.data);
			if (err.status == 401) {
				location.href = '/Login';
			}
		});
	}

	$scope.showTable = {};
	$scope.showTableData = function (report) {
		$scope.IsLookingData = true;
		$scope.ReportData = [];
		$scope.showTable = report;
		$scope.viewReportData(report.Formcode);
	}
}]);

nursingApp.controller("lastEntryController", ['$scope', '$rootScope', '$http', '$interval', '$log', '$timeout', function ($scope, $rootScope, $http, $interval, $log, $timeout) {
	$rootScope.NavLocation = 'Admin';
	$rootScope.ShowSuccess = false;
	$rootScope.ShowWarning = false;
	$rootScope.ShowDanger = false;

	$scope.getallhospitals = function () {
		$http({
			method: 'GET',
			url: '/api/getalladminhospitals'
		}).then(function successCallback(response) {
			$log.log('getallhospitals', response.data);
			$scope.AllHospitalsList = response.data;
		}, function errorCallback(err) {
			$log.log('danger', err);
			$rootScope.DisaplyMessage('danger', err.data);
			if (err.status == 401) {
				location.href = '/Login';
			}
		});
	}

	$scope.updateAllHospitalMaster = function () {
		var url = `/api/updateAllEntryLastDate?LastDate=${$scope.EntryLastDate}`;
		if (confirm('Are you sure to update the All hospitals Last Date Entry to ' + $scope.EntryLastDate + '?')) {
			$http({
				method: 'POST',
				url: url
			}).then(function successCallback(response) {
				$rootScope.DisaplyMessage('success', response.data);
				$scope.getallhospitals();
			}, function errorCallback(response) {
				$rootScope.DisaplyMessage('danger', err.data);
				if (err.status == 401) {
					location.href = '/Login';
				}
			});
		}
	}

	$scope.updateHospitalMaster = function (inputdata) {
		var url = '/api/updatehospitallastentrydate';
		var data = inputdata;
		$http({
			method: 'post',
			url: url,
			data: data
		}).then(function successCallback(response) {
			$rootScope.DisaplyMessage('success', response.data);
			$scope.getallhospitals();
		}, function errorCallback(response) {
			$rootScope.DisaplyMessage('danger', response.data);
			if (err.status == 401) {
				location.href = '/Login';
			}
		});
	}

	$scope.getallhospitals();
}]);

nursingApp.controller("viewerrorController", ['$scope', '$rootScope', '$http', '$log', '$timeout', function ($scope, $rootScope, $http, $log, $timeout) {
	$rootScope.NavLocation = 'Admin';
	$scope.getViewError = function () {
		$http({
			method: 'GET',
			url: '/api/geterrorlogs'
		}).then(function successCallback(response) {
			$log.log('getviewerrors', response.data);
			$scope.viewerror = response.data;
		}, function errorCallback(err) {
			$log.log('danger', err);
			$rootScope.DisaplyMessage('danger', err.data);
			if (err.status == 401) {
				location.href = '/Login';
			}
		});
	}

	$scope.getViewError();
}]);

nursingApp.controller("adminController", ['$scope', '$rootScope', '$http', '$log', '$timeout', function ($scope, $rootScope, $http, $log, $timeout) {
	$rootScope.NavLocation = 'Admin';
	$scope.allAdmins = [];
	$scope.getAllAdmin = function () {
		$http({
			method: 'GET',
			url: '/api/getadmins'
		}).then(function successCallback(response) {
			$scope.allAdmins = response.data;
		}, function errorCallback(err) {
			$log.log('danger', err);
			$rootScope.DisaplyMessage('danger', err.data);
			if (err.status == 401) {
				location.href = '/Login';
			}
		});
	}

	$scope.removeAdmin = function (adminId) {
		if (confirm('Are you sure to remove this user from Admin group?')) {
			var url = '/api/updateadmin';
			var data = {};
			data.Id = adminId;
			data.ActionType = 'Delete';
			$http({
				method: 'post',
				url: url,
				data: data
			}).then(function successCallback(response) {
				$rootScope.DisaplyMessage('success', response.data);
				if (response.data == 'Deleted') {
					$scope.getAllAdmin();
				}
			}, function errorCallback(response) {
				$log.log(response);
				$rootScope.DisaplyMessage('danger', response.data);
				if (err.status == 401) {
					location.href = '/Login';
				}
			});
		}
	}

	$scope.IsAdding = false;
	$scope.addAdmin = function () {
		$scope.IsAdding = true;
		$http({
			method: 'POST',
			url: '/api/getuserinfo/' + $scope.AdminLoginName
		}).then(function successCallback(response) {
			var userResult = response.data;
			if (userResult.status.StatusCode != "200") {
				$rootScope.DisaplyMessage('danger', "The account " + $scope.AdminLoginName + " is not valid. Could not find the account in lighthouse.");
				$scope.IsAdding = false;
			} else {
				if (userResult.user_detail[0].module === 'No') {
					$rootScope.DisaplyMessage('danger', "This account does not have access to The Apollo LENS in lighthouse. Enable access and try add again.");
					$scope.IsAdding = false;
				} else {
					$scope.insertAdmin(userResult.user_detail[0].user_id);
				}
			}
		}, function errorCallback(err) {
			$log.log('danger', err);
			$rootScope.DisaplyMessage('danger', "Could not load the user profile. Please try again later.");
			$scope.IsLoaded = true;
			$scope.ShowServiceUnavailable = true;
			if (err.status == 401) {
				location.href = '/Login';
			}
		});
	}

	$scope.insertAdmin = function (user_id) {
		var url = '/api/updateadmin';
		var data = {};
		data.UserId = user_id;
		data.LoginName = user_id;
		data.ActionType = 'Insert';
		$http({
			method: 'POST',
			url: url,
			data: data
		}).then(function successCallback(response) {
			$rootScope.DisaplyMessage('success', response.data);
			$scope.IsAdding = false;
			if (response.data == 'Inserted') {
				$scope.getAllAdmin();
			}
		}, function errorCallback(response) {
			$log.log(response);
			$scope.IsAdding = false;
			$rootScope.DisaplyMessage('danger', response.data);
			if (err.status == 401) {
				location.href = '/Login';
			}
		});
	}

	$scope.getAllAdmin();
}]);

nursingApp.controller("mangeAniceIdController", ['$scope', '$rootScope', '$http', '$interval', '$log', '$timeout', function ($scope, $rootScope, $http, $interval, $log, $timeout) {
	$rootScope.NavLocation = 'Admin';
	$rootScope.ShowSuccess = false;
	$rootScope.ShowWarning = false;
	$rootScope.ShowDanger = false;

	$scope.getallhospitals = function () {
		$http({
			method: 'GET',
			url: '/api/getalladminhospitals'
		}).then(function successCallback(response) {
			$log.log('getallhospitals', response.data);
			$scope.AllHospitalsList = response.data;
		}, function errorCallback(err) {
			$log.log('danger', err);
			$rootScope.DisaplyMessage('danger', err.data);
			if (err.status == 401) {
				location.href = '/Login';
			}
		});
	}

	$scope.updateAniceId = function (inputdata) {
		var url = '/api/updateaniceid';
		var data = inputdata;
		$http({
			method: 'post',
			url: url,
			data: data
		}).then(function successCallback(response) {
			$rootScope.DisaplyMessage('success', response.data);
			$scope.getallhospitals();
		}, function errorCallback(response) {
			$rootScope.DisaplyMessage('danger', response.data);
			if (err.status == 401) {
				location.href = '/Login';
			}
		});
	}

	$scope.getallhospitals();
}]);

nursingApp.controller("mangeVOCTargetController", ['$scope', '$rootScope', '$http', '$interval', '$log', '$timeout', function ($scope, $rootScope, $http, $interval, $log, $timeout) {
	$rootScope.NavLocation = 'Admin';
	$rootScope.ShowSuccess = false;
	$rootScope.ShowWarning = false;
	$rootScope.ShowDanger = false;

	$scope.getallhospitals = function () {
		$http({
			method: 'GET',
			url: '/api/getalladminhospitals'
		}).then(function successCallback(response) {
			$log.log('getallhospitals', response.data);
			$scope.AllHospitalsList = response.data;
		}, function errorCallback(err) {
			$log.log('danger', err);
			$rootScope.DisaplyMessage('danger', err.data);
			if (err.status == 401) {
				location.href = '/Login';
			}
		});
	}

	$scope.updateAniceId = function (inputdata) {
		var url = '/api/updatevoctarget';
		var data = inputdata;
		$http({
			method: 'post',
			url: url,
			data: data
		}).then(function successCallback(response) {
			$rootScope.DisaplyMessage('success', response.data);
			$scope.getallhospitals();
		}, function errorCallback(response) {
			$rootScope.DisaplyMessage('danger', response.data);
			if (err.status == 401) {
				location.href = '/Login';
			}
		});
	}

	$scope.getallhospitals();
}]);

nursingApp.controller("mangeWOWTargetController", ['$scope', '$rootScope', '$http', '$interval', '$log', '$timeout', function ($scope, $rootScope, $http, $interval, $log, $timeout) {
	$rootScope.NavLocation = 'Admin';
	$rootScope.ShowSuccess = false;
	$rootScope.ShowWarning = false;
	$rootScope.ShowDanger = false;

	$scope.getallhospitals = function () {
		$http({
			method: 'GET',
			url: '/api/getalladminhospitals'
		}).then(function successCallback(response) {
			$log.log('getallhospitals', response.data);
			$scope.AllHospitalsList = response.data;
		}, function errorCallback(err) {
			$log.log('danger', err);
			$rootScope.DisaplyMessage('danger', err.data);
			if (err.status == 401) {
				location.href = '/Login';
			}
		});
	}

	$scope.updateAniceId = function (inputdata) {
		var url = '/api/updatewowtarget';
		var data = inputdata;
		$http({
			method: 'post',
			url: url,
			data: data
		}).then(function successCallback(response) {
			$rootScope.DisaplyMessage('success', response.data);
			$scope.getallhospitals();
		}, function errorCallback(response) {
			$rootScope.DisaplyMessage('danger', response.data);
			if (err.status == 401) {
				location.href = '/Login';
			}
		});
	}

	$scope.getallhospitals();
}]);

nursingApp.controller("manageReportsController", ['$scope', '$rootScope', '$http', '$interval', '$log', '$timeout', function ($scope, $rootScope, $http, $interval, $log, $timeout) {
	$rootScope.NavLocation = 'Admin';
	$rootScope.ShowSuccess = false;
	$rootScope.ShowWarning = false;
	$rootScope.ShowDanger = false;

	$scope.form = {};
	$scope.editReport = function (_report) {
		$scope.form = _report;
	}

	$scope.updateReportName = function () {
		var url = '/api/updatereportname';
		$http({
			method: 'post',
			url: url,
			data: $scope.form
		}).then(function successCallback(response) {
			document.getElementById('btnClose').click();
			$rootScope.DisaplyMessage('success', response.data);
			$scope.getallreports();
		}, function errorCallback(response) {
			document.getElementById('btnClose').click();
			$rootScope.DisaplyMessage('danger', response.data);
			if (err.status == 401) {
				location.href = '/Login';
			}
		});
	}

	$scope.getallreports = function () {
		$http({
			method: 'GET',
			url: '/api/getalladminreports'
		}).then(function successCallback(response) {
			$scope.report = response.data;
		}, function errorCallback(err) {
			$log.log('danger', err);
			$rootScope.DisaplyMessage('danger', err.data);
			if (err.status == 401) {
				location.href = '/Login';
			}
		});
	}

	$scope.enabledisableReports = function (Id, isactive) {
		var url = `/api/reportvisible?Id=${Id}&IsActive=${isactive}`;
		$http({
			method: 'post',
			url: url
		}).then(function successCallback(response) {
			$rootScope.DisaplyMessage('success', response.data);
			$scope.getallreports();
		}, function errorCallback(response) {
			$rootScope.DisaplyMessage('danger', response.data);
			if (err.status == 401) {
				location.href = '/Login';
			}
		});
	}

	$scope.getallreports();
}]);

nursingApp.controller("manageHospitalsController", ['$scope', '$rootScope', '$http', '$interval', '$log', '$timeout', function ($scope, $rootScope, $http, $interval, $log, $timeout) {
	$rootScope.NavLocation = 'Admin';
	$rootScope.ShowSuccess = false;
	$rootScope.ShowWarning = false;
	$rootScope.ShowDanger = false;

	$scope.getallhospitals = function () {
		$http({
			method: 'GET',
			url: '/api/getalladminhospitals'
		}).then(function successCallback(response) {
			$log.log('getalladminhospitals', response.data);
			$scope.AllHospitalsList = response.data;
		}, function errorCallback(err) {
			$log.log('danger', err);
			$rootScope.DisaplyMessage('danger', err.data);
			if (err.status == 401) {
				location.href = '/Login';
			}
		});
	}

	$scope.form = {};
	$scope.editHospital = function (_hospital) {
		$scope.form = _hospital;
	}

	$scope.updateHospitalName = function () {
		var url = '/api/updatehospitalname';
		$http({
			method: 'post',
			url: url,
			data: $scope.form
		}).then(function successCallback(response) {
			document.getElementById('btnClose').click();
			$rootScope.DisaplyMessage('success', response.data);
			$scope.getallhospitals();
		}, function errorCallback(response) {
			document.getElementById('btnClose').click();
			$rootScope.DisaplyMessage('danger', response.data);
			if (err.status == 401) {
				location.href = '/Login';
			}
		});
	}

	$scope.enabledisableHospital = function (Id, isactive) {
		var url = `/api/hospitalvisible?Id=${Id}&IsActive=${isactive}`;
		$http({
			method: 'post',
			url: url
		}).then(function successCallback(response) {
			$rootScope.DisaplyMessage('success', response.data);
			$scope.getallhospitals();
		}, function errorCallback(response) {
			$rootScope.DisaplyMessage('danger', response.data);
			if (err.status == 401) {
				location.href = '/Login';
			}
		});
	}

	$scope.getallhospitals();
}]);