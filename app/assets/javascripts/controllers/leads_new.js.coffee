App.LeadsNewController = Ember.Controller.extend
  actions:
    createLead: ->
      fields = @get('blank.fields')
      if @get('blank.valid')
        lead = @store.createRecord 'lead', fields 
        lead.save().then =>
          fields = {}
          @transitionToRoute 'lead', lead
      else
        @set 'triedSave', true

  showError: (->
    @get('triedSave') and @get('blank.invalid')
  ).property('blank.invalid','triedSave') 
