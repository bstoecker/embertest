Plan.ApplicationRoute = Ember.Route.extend
  redirect: ->
    @transitionTo 'staffingImpacts'
