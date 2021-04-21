# frozen_string_literal: true

require 'test_helper'

class MapotempoRubocopTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::MapotempoRubocop::VERSION
  end

  def test_config_is_correct
    parallel = ENV['RUBOCOP_PARALLEL'] || ENV['CI'] ? '--parallel' : nil
    # parallel option could cause not to use rubocop from bundle
    options = "#{parallel} -f c --config .rubocop.yml --fail-level E --display-only-fail-level-offenses"
    cmd = "bundle exec rubocop ./* #{options}"
    o = system(cmd, [:out, :err] => '/dev/null')
    assert o, "New Rubocop offenses added to the project, run: #{cmd}"
  end
end
