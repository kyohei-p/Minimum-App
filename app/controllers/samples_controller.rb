class SamplesController < ApplicationController
  skip_before_action :require_login, only: [:index]

  def index
    @message = "このアプリは動作確認用です"
  end
end
