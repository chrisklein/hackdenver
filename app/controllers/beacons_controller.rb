class BeaconsController < ApplicationController

  def index
    beacons = Beacon.all()
    respond_to do |format|
      format.json { render :json => beacons }
    end
  end

  def create
    if not params[:lat].blank? and not params[:long].blank? and not params[:description].blank? and not params[:duration].blank?
      beacon = Beacon.create(
          :lat => params[:lat],
          :long => params[:long],
          :description => params[:description],
          :duration => params[:duration]
      )
      render :text => {:status => 'success', :beacon_id => beacon.id.to_s}.to_json, :content_type => 'application/json'
    else
      render :text => {:status => 'failure'}.to_json, :content_type => 'application/json'
    end
  end

  def show
    if not params[:id].blank?
      if beacon = Beacon.first(:conditions => ['id = ?', params[:id]])
        render :text => {:status => 'success', :description => beacon.description, :duration => beacon.duration, :created_at => beacon.created_at}.to_json, :content_type => 'application/json'
      else
        render :text => {:status => 'failure'}.to_json, :content_type => 'application/json'
      end
    else
      render :text => {:status => 'failure'}.to_json, :content_type => 'application/json'
    end
  end

  def destroy
    if not params[:id].blank?
      if beacon = Beacon.first(['id = ?', params[:id]])
        beacon.destroy
        render :text => {:status => 'success'}.to_json, :content_type => 'application/json'
      else
        render :text => {:status => 'failure'}.to_json, :content_type => 'application/json'
      end
    else
      render :text => {:status => 'failure'}.to_json, :content_type => 'application/json'
    end
  end

end
