require './lib/bookmarks'
describe Bookmarks do
  describe '.all' do
    it 'returns bookmars array' do 
      expect(Bookmarks.all).to include("http://www.makersacademy.com")
      expect(Bookmarks.all).to include("http://www.google.com")
      expect(Bookmarks.all).to include("http://www.destroyallsoftware.com")
    end
  end
end