class AddCzStatusTranslationCenterTranslationKeys < ActiveRecord::Migration
  def change
    add_column :translation_center_translation_keys, :cz_status, :string, default: 'untranslated'
  end
end
