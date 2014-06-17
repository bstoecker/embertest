Plan.StaffingImpactController = Ember.ObjectController.extend

  name: Ember.computed ->
    @get('model.name')