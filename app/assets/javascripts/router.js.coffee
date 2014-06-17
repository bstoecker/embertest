# For more information see: http://emberjs.com/guides/routing/

Plan.Router.map ()->
  @resource('staffingImpacts', path: '/staffing_impacts')
  @resource('staffingImpact', path: '/staffing_impacts/:staffing_impact_id')

