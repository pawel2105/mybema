# == Schema Information
#
# Table name: admins
#
#  id                     :integer          not null, primary key
#  name                   :string(255)
#  email                  :string(255)
#  encrypted_password     :string(255)      default("")
#  reset_password_token   :string(255)
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default("0"), not null
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :string(255)
#  last_sign_in_ip        :string(255)
#  created_at             :datetime
#  updated_at             :datetime
#  invitation_token       :string(255)
#  invitation_created_at  :datetime
#  invitation_sent_at     :datetime
#  invitation_accepted_at :datetime
#  invitation_limit       :integer
#  invited_by_id          :integer
#  invited_by_type        :string(255)
#  invitations_count      :integer          default("0")
#  avatar                 :string(255)
#

FactoryGirl.define do
  factory :admin do
    name Faker::Name.name
    sequence(:email) { |n| Faker::Internet.email + "#{n}" }
    password Faker::Internet.password
  end
end
