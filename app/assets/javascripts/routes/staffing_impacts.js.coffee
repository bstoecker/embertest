Plan.StaffingImpactsRoute = Ember.Route.extend
  setupController: (controller) ->
    @controllerFor('staffingImpacts').set 'model',
      @store.find('staffingImpact')
