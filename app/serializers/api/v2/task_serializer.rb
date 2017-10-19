class Api::V2::TaskSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :done, :deadline,
             :created_at, :updated_at, :user_id, :short_description, :late?

  belongs_to :user

  def short_description
    object.description[1..40] if object.description.present?
  end

  def late?
    Time.current > object.deadline if object.deadline.present?
  end
end
