require_relative './test_helper'
require 'rover'
require 'probe'

describe Rover do

  let(:probe) { Probe.new }
  let(:rover) { Rover.new(probe) }

  describe '#move' do

    it 'returns 0 prior to move being called' do
      rover.report.must_equal "0"
    end

    it 'increments position by one after move has been called' do
      rover.move
      rover.report.must_equal "1"
    end

  end

  describe '#survey' do

    it 'delegates to probe to take sample' do
      probe = Minitest::Mock.new
      probe.expect(:take_sample, nil)

      rover = Rover.new(probe)
      rover.survey

      assert probe.verify
    end

  end

  describe '#report' do

    it 'includes probe status as a part of report' do
      probe = Probe.new
      probe.stub :status, "found: gold" do
        rover = Rover.new(probe)
        rover.report.must_include "found: gold"
      end

    end

  end

end
