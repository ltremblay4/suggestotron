class Topic < ApplicationRecord
has_many :votes, dependent: :destroy

  def upvote
    votes.create
  end

  def downvote
    if votes.count > 0
      votes.first.destroy
    end
  end
end
