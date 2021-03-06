# frozen_string_literal: true

class DeviseCreateJapaneses < ActiveRecord::Migration[5.2]
  def change
    create_table :japaneses do |t|
      ## Database authenticatable
      t.string :email,              null: false, default: ""
      t.string :encrypted_password, null: false, default: ""

      ## Recoverable
      t.string   :reset_password_token
      t.datetime :reset_password_sent_at

      ## Rememberable
      t.datetime :remember_created_at

      ## Trackable
      t.integer  :sign_in_count, default: 0, null: false
      t.datetime :current_sign_in_at
      t.datetime :last_sign_in_at
      t.string   :current_sign_in_ip
      t.string   :last_sign_in_ip

      # Confirmable
      t.string   :confirmation_token
      t.datetime :confirmed_at
      t.datetime :confirmation_sent_at
      t.string   :unconfirmed_email # Only if using reconfirmable

      ## Lockable
      # t.integer  :failed_attempts, default: 0, null: false # Only if lock strategy is :failed_attempts
      # t.string   :unlock_token # Only if unlock strategy is :email or :both
      # t.datetime :locked_at

      t.string     :first_name, index: true
      t.string     :last_name, index: true
      t.string     :nickname, index: true
      t.string     :gender
      t.integer    :language_id
      t.integer    :age
      t.string     :image
      t.string     :lang_l


      t.timestamps null: false
    end

    add_index :japaneses, :email,                unique: true
    add_index :japaneses, :reset_password_token, unique: true
    add_index :japaneses, :confirmation_token,   unique: true
    # add_index :japaneses, :unlock_token,         unique: true
  end
end
