module Alipay
  class Notify
    def self.verify?(params)
      params = Utils.symbolize_keys(params)
      open("http://notify.alipay.com/trade/notify_query.do?partner=#{Alipay.pid}&notify_id=#{CGI.escape params[:notify_id].to_s}").read == 'true'
    end
  end
end
