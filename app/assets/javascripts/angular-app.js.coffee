@app = angular.module("plangular", ["ngResource"])

$(document).on('ready page:load', ->
  angular.bootstrap(document, ['plangular'])
)