require "minitest/autorun"
require_relative "../lib/ip-location"

class TestIPLocation < Minitest::Test
  def test_query
    info = IPLocation.query("222.212.254.17")
    assert_equal(info.class, IPLocation::Info)
    assert_equal(info.country, "中国")
    assert_equal(info.region, "四川省")
    assert_equal(info.city, "成都市")
    assert_equal(info.isp, "电信")
    assert_equal(info.fullname, "中国四川省成都市")
  end
end