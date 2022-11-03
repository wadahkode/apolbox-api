class HomepagesController < ApplicationController
  def index
    render html: '<h1>Selamat datang di Apolbox Restful API.</h1>'.html_safe
  end
end
