class VoteSerializer < ActiveModel::Serializer
  attributes :id, :voter_id, :subject_id, :subject_type, :value
end
