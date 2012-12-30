class AddEsStatusTranslationCenterTranslationKeys < ActiveRecord::Migration
  def change
    add_column :translation_center_translation_keys, :es_status, :string, default: 'untranslated'
  end
end
