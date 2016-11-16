class AddCharacterCountToMovies < ActiveRecord::Migration[5.0]
  def change
    add_column :movies, :characters_count, :integer
  end
end
