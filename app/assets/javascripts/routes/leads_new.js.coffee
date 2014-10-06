App.LeadsNewRoute = Ember.Route.extend
  
  setupController: (controller) ->
    controller.set 'triedSave', false
    controller.set 'blank', App.BlankLead.create() 
    controller.set 'blank.fields', {}
