App.LeadController = Ember.ObjectController.extend
  
  actions:
    saveChanges: -> 
      if @get('isDirty')
        @get('model').save()
    delete: ->
      @get('model').destroyRecord().then =>
        @transitionToRoute 'leads'

  showUnsavedMessage: (->
    @get('isDirty') && !@get('isSaving')
  ).property('isDirty','isSaving')

  isEditing: false
