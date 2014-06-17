Plan.StaffingImpactRoute = Ember.Route.extend
  setupController: (params) ->
    @controllerFor('staffingImpacts').set 'model',
      @store.find('staffingImpact')
    item = @controllerFor('staffingImpacts').find (item) ->
      item.id is params.staffing_impact_id
    @controllerFor('staffingImpact').set('model', item)

