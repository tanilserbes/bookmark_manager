feature 'Viewing Homepage' do 
  scenario 'Visiting Homepage' do 
    visit '/'
    expect(page).to have_content "Welcome to Bookmarks."
  end
end
feature 'Viewing Bookmarks' do 
  scenario 'Visiting /Bookmarks' do 
    visit '/bookmarks'
    expect(page).to have_content("www.youtube.com")
    expect(page).to have_content("www.facebook.com")
    expect(page).to have_content("www.google.com")
  end
end

