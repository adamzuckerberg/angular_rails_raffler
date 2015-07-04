# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

angular.module('Raffler', []).controller "RaffleCtrl", ($scope) ->

  $scope.entries = [
    {name: "Trumpy"}
    {name: "Stumpy"}
    {name: "Clumpy"}
  ]

  $scope.addEntry = ->
  	$scope.entries.push($scope.newEntry)
  	$scope.newEntry = {}