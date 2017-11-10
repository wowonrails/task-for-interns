FactoryGirl.create(:user, email: "user@example.com")
FactoryGirl.create(:user, full_name: "Admin", email: "admin@example.com", role: 1)

FactoryGirl.create(:feedback, name: "John Smith", email: "john@example.com", text: "Hello")
FactoryGirl.create(:feedback, name: "Michael Brown", email: "misha@example.com", text: "Help")

50.times do
  FactoryGirl.create(:feedback)
end
