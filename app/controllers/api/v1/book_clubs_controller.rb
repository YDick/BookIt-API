class Api::V1::BookClubsController < ApplicationController
    # GET api/v1/book_clubs/:id
    def show
        @book_club=BookClub.find(params[:id])

        if @book_club.image_url
           @image = @book_club.image_url
        else
          @image = 'https://www.librarieshawaii.org/wp-content/uploads/2016/09/Book-club-graphic-resized-for-website.jpg'
        end

        render json:{status: 200, book_club: @book_club, image: @image}
    end

    #create, update, delete, index
    private
    def book_club_params
        params.require(:book_club).permit(:name, :description,  :genre, club_location: [:address_line1, :address_line2, :city, :province, :postal_code, :country])
      end
end
