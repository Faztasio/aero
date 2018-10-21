require "json"

class aero
  def initialize(name)
    @name = name
    @data = {}
  end
  def set(key,value)
    @data[key] = value
  end
  def get(key)
    return @data[key]
  end
  def importJson(jsondata)
    js = JSON.parse(jsondata)
    @data = js.merge(@data)
  end
end
