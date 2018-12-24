class Microtaskhub
  def create(username)
    params = {
      method: 'post',
      url: 'https://microtaskhub.net',
      username: username
    }

    response = http_method(params)
    "#{response['header']} : #{response['body']}"

  rescue Timeout::Error
    '408 : Request Timeout.'
  end

  def destroy(username)
    params = {
      method: 'delete',
      url: 'https://microtaskhub.net',
      username: username
    }
    response = http_method(params)
    "#{response['header']} : #{response['body']}"
  end

  private

  def http_method(params)
    # 本来はNet::http等で処理を書く
    'return value from http_method'
  end
end