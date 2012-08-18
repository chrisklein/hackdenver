class BeaconsController < ApplicationController

  def index
    beacons = Beacon.all()

  end

  def create
    if not params[:lat].blank? and not params[:long].blank? and not params[:description].blank? and not params[:duration].blank?
      Beacon.create(
          :lat => params[:lat],
          :long => params[:long],
          :description => params[:description],
          :duration => params[:duration]
      )
    else
      return {:status => 'failure'}.to_json
    end
  end

  def show
    if not params[:id].blank?
      if beacon = Beacon.first(:conditions => ['id = ?', params[:id]])
        return {:status => 'success', :description => beacon.description, :duration => beacon.duration, :created_at => beacon.created_at}.to_json
      else
        return {:status => 'failure'}.to_json
      end
    else
      return {:status => 'failure'}.to_json
    end
  end

  def destroy
    if not params[:id].blank?
      if beacon = Beacon.first(['id = ?', params[:id]])
        beacon.destroy
      end
    end
  end

end
