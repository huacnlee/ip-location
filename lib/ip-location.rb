require 'open-uri'
require 'json'

module IPLocation
  class Info
    attr_accessor :country, :area, :region, :city, :isp
    
    def fullname
      [self.country, self.region, self.city].join("")
    end
  end
  
  class << self    
    def query(ip)
      res = open("http://ip.taobao.com/service/getIpInfo.php?ip=#{ip}").read
      json = JSON.parse(res)
      if json["code"] == 0
        info = IPLocation::Info.new
        %W(country area region city isp).each do |key|
          info.send("#{key}=", json["data"][key])
        end
        
        return info
      end
      return nil
    end
  end
end