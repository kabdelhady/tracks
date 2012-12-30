class AddFrStatusTranslationCenterTranslationKeys < ActiveRecord::Migration
  def change
    add_column :translation_center_translation_keys, :fr_status, :string, default: 'untranslated'
  end
end
