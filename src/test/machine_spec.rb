require_relative '../main/machine'
# require_relative '../../src/main/machine'

describe Machine do
  before :each do #:all
    @machine = Machine.new([:shopping, :checking_out, :eating])
    @machine.events = {:outing => {:from => :shopping, :to => :checking_out, :between => :eating}}
  end

  it 'should initially have a state of :initial' do
    # @machine.state.should == :shopping
    expect(@machine.state).to eq :shopping
  end

  it 'should remember a list of valid states' do
    # @machine.states.should == [:shopping, :checking_out, :eating]
    # expect(@machine.states).to eq [:shopping, :checking_out, :eating]
    expect(@machine.states).to match_array([:shopping, :checking_out, :eating])
  end

  it 'should transition to :checking_out upon #trigger(:checkout) event' do
    @machine.trigger(:outing)
    @machine.state.should == :checking_out
  end

  it 'should transition to :success upon #trigger(:accept_card)' do
    @machine.events = {
        :checkout => {:from => :shopping, :to => :checking_out},
        :accept_card => {:from => :checking_out, :to => :success}
    }

    @machine.trigger(:checkout)
    @machine.state.should == :checking_out
    @machine.trigger(:accept_card)
    @machine.state.should == :success
  end

  it 'should not transition from :shopping to :success upon #trigger(:accept_card)' do
    @machine.events = {
        checkout: {from: :shopping, to: :checking_out},
        accept_card: {from: :checking_out, to: :success}
    }

    @machine.trigger(:accept_card)
    @machine.state.should_not == :success
  end
end
