angular.module("ionicstarter")

# A simple controller that shows a tapped item's data
.controller "AccountDashboardCtrl", ($scope, $stateParams, AccountService) ->
  $scope.account = AccountService.account
  alert('tsunami')
