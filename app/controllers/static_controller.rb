class StaticController < ApplicationController
  def homepage
    @pending_approvals = Post.status_by('submitted')
  end
end
