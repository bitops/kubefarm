require 'minitest/autorun'
require 'net/http'

describe "Basic Pod-ready containerized web process" do

  describe "main application" do
    ROOT_PATH = URI('http://127.0.0.1:3000/')

    describe "GET /" do
      it "works" do
        res = Net::HTTP.get_response(ROOT_PATH)
        assert_equal 200, res.code.to_i
      end

      it "returns json" do
        res = Net::HTTP.get_response(ROOT_PATH)
        assert_equal "application/json", res.header["Content-Type"]
      end

      it "returns data" do
        res = Net::HTTP.get_response(ROOT_PATH)
        assert_equal "{}", res.body
      end
    end
  end

  describe "readiness probe" do
    it "must respond with 200" do
      skip("not implemented yet")
    end
  end

  describe "liveness probe" do
    it "must respond with 200" do
      skip("not implemented yet")
    end
  end

end
