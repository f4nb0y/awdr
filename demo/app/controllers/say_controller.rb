class SayController < ApplicationController

  def hello
    @now = Time.now
  end

  def goodbye
  end

end
