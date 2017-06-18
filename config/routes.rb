set views: 'app/views'

get '/' do
  ExamsController.new(self).index
end

get '/download_csv' do
  ExamsController.new(self).download_csv
end
