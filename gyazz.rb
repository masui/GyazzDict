# -*- coding: utf-8 -*-
require 'net/http'

class Gyazz 
  def initialize(base='gyazz.com')
    @base = base
  end

  def each(wiki,page)
    Net::HTTP.start(@base, 80) {|http|
      response = http.get("/#{wiki}/#{page}/text")
      l = response.body
      if l then
        l.each { |line|
          yield(line)
        }
      end
    }
  end
end

if $0 == __FILE__ then
  gyazz = Gyazz.new
  gyazz.each('kdict','リスト'){ |line|
    puts line
  }
end

