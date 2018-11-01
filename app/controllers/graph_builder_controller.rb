require 'csv'

class GraphBuilderController < ApplicationController
  def index
    if params[:file]
      csv_hash = CSV.read(params[:file]).to_h
      csv_hash.delete(csv_hash.keys.first)

      @labels = csv_hash.keys
      @data = csv_hash.values.map(&:to_i)
    end
  end
end
