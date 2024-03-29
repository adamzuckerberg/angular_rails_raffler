# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

angular.module('Raffler', []).controller "RaffleCtrl", ($scope) ->

  $scope.entries = [
    {name: "Donald Trump"}
    {name: "Hillary Clinton"}
    {name: "Bernie Sanders"}
    {name: "Elizabeth Warren"}
    {name: "Jeb Bush"}
    {name: "Chris Christie"}
    {name: "Bobby Jindal"}
  ]

  $scope.addEntry = ->
  	$scope.entries.push($scope.newEntry)
  	$scope.newEntry = {}

  $scope.drawWinner = ->
  	pool = []
  	angular.forEach $scope.entries, (entry) ->
  		pool.push(entry) if !entry.winner
  	if pool.length > 0
	  	entry = pool[Math.floor(Math.random()*pool.length)]
	  	entry.winner = true
	  	$scope.lastWinner = entry