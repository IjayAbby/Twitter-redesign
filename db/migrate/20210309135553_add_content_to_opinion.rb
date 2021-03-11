class AddContentToOpinion < ActiveRecord::Migration[6.1]
  def change
  	add_column :opinions, :content, :text
  	add_column :opinions, :author_id, :integer

  end
end
