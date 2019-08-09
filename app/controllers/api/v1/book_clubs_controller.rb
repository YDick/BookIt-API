class Api::V1::BookClubsController < ApplicationController
  
    def show
        @book_club=BookClub.find(params[:id])
        render json:{book_club: @book_club}
    end
    def book_club_params
        params.require(:book_club).permit(:name, :description,  :genre, club_location: [:address_line1, :address_line2, :city, :province, :postal_code, :country])
      end
end
