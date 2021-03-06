class Api::V1::BookClubsController < ApplicationController
  # GET api/v1/book_clubs/:id
    def index
        @book_club=BookClub.all

        render json:{book_clubs: @book_club}
    end

    def show
        @book_club=BookClub.find(params[:id])
        @userlist=@book_club.users
        @adminlist=@book_club.admins
      

        if @book_club.image_url
           @image = @book_club.image_url
        else
          @image = 'https://www.librarieshawaii.org/wp-content/uploads/2016/09/Book-club-graphic-resized-for-website.jpg'
        end

        @userlist.each do |x|
            x.image_url = x.gravatar_url
        end

        @adminlist.each do |x|
            x.image_url = x.gravatar_url
        end

        render json:{status: 200, book_club: @book_club, image: @image, users: @userlist, admins: @adminlist}

        
    end

    def create
        @book_club=BookClub.create(book_club_params)
        render json:{status: 200, book_club: @book_club}
    end

    def update
        @book_club=BookClub.update(book_club_params)
        render json:{status: 200, book_club: @book_club}
    end

    def destroy
        @book_club=BookClub.delete(params[:id])
        render json:{status: 200, book_club: @book_club}
    end

    #create, update, delete, index
    private
    def book_club_params
        params.require(:book_club).permit(:name, :description,  :genre, club_location: [:address_line1, :address_line2, :city, :province, :postal_code, :country])
      end
end
