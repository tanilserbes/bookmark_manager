require './lib/bookmarks'
describe Bookmarks do
  describe '.all' do
    it 'returns a list of bookmarks' do
      # Add the test data
      Bookmarks.create(url: "http://www.makersacademy.com")
      Bookmarks.create(url: "http://www.destroyallsoftware.com")
      Bookmarks.create(url: "http://www.google.com")
      expect(Bookmarks.all).to include("http://www.makersacademy.com")
      expect(Bookmarks.all).to include("http://www.google.com")
      expect(Bookmarks.all).to include("http://www.destroyallsoftware.com")
    end
  end

  describe '.create' do 
    it 'create a new bookmark' do
      Bookmarks.create(url: 'http://wwww.testbookmark.com')
      expect(Bookmarks.all).to include 'http://wwww.testbookmark.com'
    end
  end
end