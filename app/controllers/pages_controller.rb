class PagesController < ApplicationController
  def home
    # should fetch all tasks from DB
    @tasks = Task.all
  end
end
