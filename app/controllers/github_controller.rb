class GithubController < ApplicationController
  def index
    @user = HTTParty.get("https://api.github.com/users/cHaden",
      :headers => {
        "Authorization" => "token #{ENV['GITHUB_TOKEN']}",
        "User-Agent" => "cHaden"
        })

    @response = HTTParty.get("https://api.github.com/users/cHaden/events",
      :headers => {
        "Authorization" => "token #{ENV['GITHUB_TOKEN']}",
        "User-Agent" => "cHaden"
        })
  end
end
