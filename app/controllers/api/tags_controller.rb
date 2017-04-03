class Api::TagsController < JSONAPI::ResourceController
  include JSONAPI::ActsAsResourceController

  def create
    entity_type = params["data"]["attributes"]["entity-type"]
    tags = params["data"]["attributes"]["tags"]
    tag_record = Tag.find_by_entity_type(entity_type)
    unless tag_record.nil?
      tag_record.update_attributes(:tags => tags)
    else
      super
    end
  end

  def retrive
    tag_record = Tag.find(params[:id])
    render json: JSONAPI::ResourceSerializer.new(Api::TagResource).serialize_to_hash(Api::TagResource.new(tag_record, nil)), status: :ok
  end

  def destroy
    Tag.delete(params[:id])
  end
end
