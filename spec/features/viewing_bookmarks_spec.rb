require 'pg'
feature 'Viewing Homepage' do 
  scenario 'Visiting Homepage' do 
    visit '/'
    expect(page).to have_content "Welcome to Bookmarks."
  end
end
feature 'Viewing Bookmarks' do 
  scenario 'A user can see /Bookmarks' do 
      # Add the test data
    Bookmarks.create(url: "http://www.makersacademy.com")
    Bookmarks.create(url: "http://www.destroyallsoftware.com")
    Bookmarks.create(url: "http://www.google.com")
    visit('/bookmarks')
    expect(page).to have_content("http://www.makersacademy.com")
    expect(page).to have_content("http://www.google.com")
    expect(page).to have_content("http://www.destroyallsoftware.com")
  end
end
