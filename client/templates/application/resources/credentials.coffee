Template.credentialsPage.onCreated ->
  self = this
  self.autorun -> self.subscribe 'singleUser',Collections.Users.Current._id

Template.credentialsPage.onRendered ->
  $('.tooltipped').tooltip {delay: 50}

Template.credentialsPage.onDestroyed ->
  $('.tooltipped').tooltip 'remove'

Template.credentialsPage.helpers
  currentUser: -> Collections.Users.Current
  professionsValue: -> Collections.Users.Current.professions
  tradesValue: -> Collections.Users.Current.trades
  customTemplate: -> Customisations.credentials