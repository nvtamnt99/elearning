class Admin::WordsController <ApplicationController
  def index
    @words = Word.all
  end

  def new
    @word = Word.new
  end
  def create
    @word = Word.new word_params
    if @word.save
      flash[:success] = 'Create word successfully'
      redirect_to root_path
    else
      flash[:alert] = 'Create word failed'
      render :new
    end
  end

  private

  def word_params
    params.require(:word).permit :content, word_answers_attributes: [:id, :content, :word_id, :correct]
  end
end
