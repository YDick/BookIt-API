class Api::V1::BookClubsController < ApplicationController
  # GET api/v1/clubs/:id
    def index
        @book_club=BookClub.all(book_club_params)
        render json:{book_club: @book_club}
    end

    def show
        @book_club=BookClub.find(params[:id])
        render json:{book_club: @book_club}
    end

    def create
        @book_club=BookClub.create(book_club_params)
        render json:{book_club: @book_club}
    end

    def update
        @book_club=BookClub.update(book_club_params)
        render json:{book_club: @book_club}
    end

    def destroy
        @book_club=BookClub.delete(params[:id])
        render json:{book_club: @book_club}
    end
    #create, update, delete, index
    private
    def book_club_params
        params.require(:book_club).permit(:name, :description,  :genre, club_location: [:address_line1, :address_line2, :city, :province, :postal_code, :country])
      end
end
