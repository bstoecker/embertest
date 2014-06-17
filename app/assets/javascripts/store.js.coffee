# # http://emberjs.com/guides/models/#toc_store
# # http://emberjs.com/guides/models/pushing-records-into-the-store/

# Plan.Store = DS.Store.extend({

# })

# # Override the default adapter with the `DS.ActiveModelAdapter` which
# # is built to work nicely with the ActiveModel::Serializers gem.
# Plan.ApplicationAdapter = DS.ActiveModelAdapter.extend({

# })







Plan.Store = DS.Store.extend()

Plan.ApplicationSerializer = DS.RESTSerializer.extend
  serializeIntoHash: (hash, type, record, options) ->
    hash[Em.String.underscore(type.typeKey)] = @serialize(record, options)

Plan.ApplicationAdapter = DS.RESTAdapter.extend
  namespace: 'api'

  # by default, Ember uses camelized urls (do we want this in our backend?)
  # for now, stick with underscored urls and customize the adapter [JZ]
  pathForType: (type) ->
    Ember.String.pluralize(Ember.String.underscore(type))
