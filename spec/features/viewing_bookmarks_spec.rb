feature 'Viewing Homepage' do 
  scenario 'Visiting Homepage' do 
    visit '/'
    expect(page).to have_content "Welcome to Bookmarks."
  end
end
feature 'Viewing Bookmarks' do 
  scenario 'A user can see /Bookmarks' do 
    visit '/bookmarks'
    expect(page).to have_content("http://www.makersacademy.com")
    expect(page).to have_content("http://www.google.com")
    expect(page).to have_content("http://www.destroyallsoftware.com")
  end
end
