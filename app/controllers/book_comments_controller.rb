class BookCommentsController < ApplicationController
  before_action :correct_user, only: [:destroy]

  def create
    book = Book.find(params[:book_id])
    comment = current_user.book_comments.new(book_comment_params)
    comment.book_id = book.id
    comment.save
    @book = Book.find(params[:book_id])
    @book_comment = BookComment.new
  end

  def destroy
     @book = Book.find(params[:book_id])
     @book_comment = BookComment.find_by(id: params[:id],book_id: params[:book_id])
     @book_comment.destroy
     @book_comment_new = BookComment.new
  end

  private

  def book_comment_params
    params.require(:book_comment).permit(:comment)
  end

  def correct_user
    @book_comment = BookComment.find(params[:id])
    @user = @book_comment.user
    redirect_to(books_path) unless @user == current_user
  end
end
