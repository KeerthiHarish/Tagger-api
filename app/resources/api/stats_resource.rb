class Api::StatsResource < JSONAPI::Resource
  abstract
  attributes :tag, :count
end
