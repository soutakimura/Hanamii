class GenresController < ApplicationController

  def culture
    @searchy = Syuriken.where(genre: 'Culture')
  end

  def food
    @searchy = Syuriken.where(genre: 'Food')
  end

  def stay
    @searchy = Syuriken.where(genre: 'Stay')
  end

  def spot
    @searchy = Syuriken.where(genre: 'Spot')
  end

  def shop
    @searchy = Syuriken.where(genre: 'Shop')
  end

  def souvenir
    @searchy = Syuriken.where(genre: 'Souvenir')
  end

  def museum
    @searchy = Syuriken.where(genre: 'Museum')
  end

  def ruralarea
    @searchy = Syuriken.where(genre: 'RuralArea')
  end
end
