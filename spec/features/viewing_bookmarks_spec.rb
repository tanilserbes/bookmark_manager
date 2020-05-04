feature 'Viewing Homepage' do 
  scenario 'Visiting Homepage' do 
    visit '/'
    expect(page).to have_content "Welcome to Bookmarks."
  end
end