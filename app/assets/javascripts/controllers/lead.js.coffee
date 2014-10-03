App.LeadController = Ember.ObjectController.extend
  
  actions:
    saveChanges: -> @get('model').save()

  showUnsavedMessage: (->
    @get('isDirty') && !@get('isSaving')
  ).property('isDirty','isSaving')
