class Api::V1::BookClubsController < ApplicationController
  # GET api/v1/clubs/:id
    def show
        @book_club=BookClub.find(params[:id])
        render json:{book_club: @book_club}
    end
#create, update, delete, index
    private
    def book_club_params
        params.require(:book_club).permit(:name, :description,  :genre, club_location: [:address_line1, :address_line2, :city, :province, :postal_code, :country])
      end
end
