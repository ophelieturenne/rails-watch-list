class BookmarksController < ApplicationController
  def new
    @list = List.find(params[:id])
    @bookmark = Bookmark.new
    @movies = @list.movies
  end

  def create
    @list = List.find(params[:id])
    @bookmark = bookmark.new(bookmark_params)
    @bookmark = @list.movies

    if @bookmark.save
      redirect_to @list, notice: "list was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
  end

  private

  def bookmark_params
    params.require(:bookmark).permit(:comment, :movie_id)
  end

end
