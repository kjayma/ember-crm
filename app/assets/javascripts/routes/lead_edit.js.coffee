App.LeadEditRoute = Ember.Route.extend
  renderTemplate: (controller, model) ->
    @render(
      'lead/edit',
      {
        into: 'application',
        outlet: 'lead'
      }
    )
