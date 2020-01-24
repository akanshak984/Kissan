class FarmerInstrumentsController < ApplicationController
    def index
        @ads = FarmerInstrument.all.includes(:farmer, :instrument)
        @farmer = Farmer 
        @rent = Rent
    end

    def show
        @ad = FarmerInstrument.where(id: params[:id]).first
        @farmer = @ad.farmer
        @instrument = @ad.instrument
        @address = @farmer.address
        @rent = @farmer.rents
    end

    def create

        @farmer_instrument = FarmerInstrument.new(farmer_instrument_params)
        @farmer_instrument.save
        #byebug
        redirect_to farmer_instruments_path
        #redirect_to farmer_instrument_path(@farmer_instrument)
        #render :show

        # byebug
        # # render plain: params[:farmer_instrument].inspect
        # @farmer_instrument = FarmerInstrument.create(params[:farmer_instrument].permit(:deposit, :rent_per_hour))
        # @farmer_instrument.save
        # redirect_to @farmer_instrument
    end

    def new
        @farmer = Farmer.all.collect {|u| [u.full_name, u.id]}
        @instrument = Instrument.all.collect {|u| [u.instrument_name, u.id]}
        
    end

    def edit
        @edit_farmer_instrument = FarmerInstrument.find(params[:id])
    end

    def update
        @update_record = FarmerInstrument.find(params[:id])
        @update_record.update(rent_per_hour: params[:farmer_instrument][:rent_per_hour],
        deposit: params[:farmer_instrument][:deposit], available_from_date:
        params[:farmer_instrument][:available_from_date],
        available_to_date: params[:farmer_instrument][:available_to_date])
        redirect_to farmer_instruments_path
    end

    def destroy
        @destroy_record = FarmerInstrument.find(params[:id]).destroy
        redirect_to farmer_instruments_path
    end

    private

        def farmer_instrument_params
            params.require(:farmer_instrument).permit(:deposit, :rent_per_hour, :farmer_id, :instrument_id, :available_from_date, :available_to_date, :is_available)
        end
    
end
