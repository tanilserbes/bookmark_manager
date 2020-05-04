require './lib/bookmarks'
describe Bookmarks do
    it 'returns bookmars array' do 
      expect(Bookmarks.all).to include("www.youtube.com")
      expect(Bookmarks.all).to include("www.facebook.com")
      expect(Bookmarks.all).to include("www.google.com")
    end
end