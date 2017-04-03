class Api::StatsController < JSONAPI::ResourceController
  include JSONAPI::ActsAsResourceController

  def index
    tag_records = Tag.all
    tags = []
    tag_records.each do |record|
      tags << record.tags
    end
    tags = tags.reduce(:+).sort
    stats = []
    count = 1
    tags.each_with_index do |tag, index|
      if tag != tags[index + 1]
        # stats.push({:tag => tag, :count => count })
        stats << {tag: tag, count: count }
        count = 1
      else
        count += 1
      end
    end
    render json: stats, status: :ok
  end
end
