RSpec.describe "SingleVarQ" do
  before(:all) do
    @q = SingleVarQ.new(4)
  end
  
  it "returns integers only" do
    expect(@q.queue.is_a?(Integer)).to be true
  end
  
  it "enqueues" do
    expect(@q.enqueue(6)).to eq(64)
    expect(@q.enqueue(3)).to eq(364)
    expect(@q.enqueue(7)).to eq(7364)
  end
  
  it "dequeues" do
    expect(@q.dequeue).to eq(736)
    expect(@q.dequeue).to eq(73)
  end
  
  it "circular queues" do
    @q.enqueue(5)
    # => 573
    @q.enqueue(9)
    # => 9573
  
    expect(@q.circular_queue).to eq(3957)
  end
  
  it "does not enqueue a non single digit integer" do
    expect {
      @q.enqueue(42)
    }.to raise_error("Invalid integer")
  end
  
  it "does not enqueue zero" do
    expect {
      @q.enqueue(0)
    }.to raise_error("Invalid integer")
  end
end
   