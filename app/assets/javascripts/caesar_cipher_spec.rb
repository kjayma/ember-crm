App.LeadsNewController = Ember.Controller.extend
  actions:
    createLead: ->
      fields = @get('fields')
      if fields.valid
        lead = @store.createRecord 'lead', fields
        lead.save().then =>
          @transitionToRoute 'lead', lead

  showError: (->
    @get('fields')
  ).property('fields')
