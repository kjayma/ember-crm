App.BlankLead = Ember.Object.extend
  fields: {}
  
  valid: (->
    if @get('fields.lastName') && @get('fields.firstName')
      true
  ).property('fields.firstName','fields.lastName')

  invalid: (->
    !@get('valid')
  ).property('valid')


