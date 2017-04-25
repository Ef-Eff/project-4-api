class Logic
  def self.duplicate_subtitle_submission? users_id, subtitles
    if subtitles.find {|subtitle| subtitle.user_id == users_id }
      true
    else
      false
    end
  end

  def self.already_voted? vote_type, vote_id, users_id
    if vote_type == 'Comment'
      if Comment.find(vote_id).votes.find { |vote| vote.voter_id == users_id }
        return true
      else
        return false
      end
    else
      if Subtitle.find(vote_id).votes.find { |vote| vote.voter_id == users_id }
        return true
      else
        return false
      end
    end
  end
end
