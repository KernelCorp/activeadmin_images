class CreateTable<%= name.pluralize %> < ActiveRecord::Migration
  def change
    create_table :<%= name.underscore.pluralize.to_sym %> do |t|
      t.attachment :attachment
      t.timestamps
    end
  end
end