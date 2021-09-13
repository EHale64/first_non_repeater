require 'minitest/autorun'
require 'minitest/pride'
require 'json'
require 'pry'
require_relative '../lib/first_non_repeat'

class FirstNonRepeatTest < MiniTest::Test
    def setup
        @first = FirstNonRepeat.new
    end

    def test_it_returns_a_character
        assert_equal 'a', @first.first_non_repeater('a')
    end

    def test_it_handles_empty_strings
        assert_equal '', @first.first_non_repeater('')
    end

    def test_it_returns_first_character
        assert_equal 'a', @first.first_non_repeater('apple')
    end

    def test_it_returns_first_non_repeating_character
        assert_equal 'a', @first.first_non_repeater('apple')
        assert_equal 't', @first.first_non_repeater('stress')
        assert_equal 'T', @first.first_non_repeater('sTreSS')
    end
end