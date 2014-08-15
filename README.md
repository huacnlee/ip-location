ip-location
===========

通过淘宝 IP 库查询 IP 所在地域位置 http://ip.taobao.com

## Limit

* 官方限制每个服务器请求过去屏率无能超过 10 Qps。

## Usage

```ruby
irb> require "ip-location"
true
irb> info = IPLocation.query("222.212.254.17")
irb> info.country
"中国"
ifb> info.region
"四川省"
irb> info.city
"成都市"
irb> info.isp
"电信"
irb> info.fullname
"中国四川省成都市"