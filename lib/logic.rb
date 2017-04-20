class Logic
  def self.duplicate_subtitle_submission? users_id, subtitles
    if subtitles.find {|subtitle| subtitle.user_id == users_id }
      true
    else
      false
    end
  end
end
