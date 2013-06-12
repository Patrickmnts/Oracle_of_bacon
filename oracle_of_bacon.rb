require 'net/http'

def bacon


  from = URI('George Clooney')
  to = URI('Kevin Bacon')
  #options are pre-determined by API call
  option = URI(1)
  # 1 includes movies, 3 includes movies and tv
  location = URI('google-aps')


  parameters = ({method: => 'post', payload: => "a=#{from}&b=#{to}&u=#{option}&p=#{location}",
    })
  response = http://

end
