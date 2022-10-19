require 'ruby2_keywords'
require 'minitest/autorun'
require 'minitest/spec'

class MyClass
  ruby2_keywords def to_array(*args)
    Array(args)
  end
end

describe 'ruby2_keywords' do
  it 'returns args' do
    r = MyClass.new.to_array(1, 2)
    _(r).must_equal [1, 2]
  end
end
