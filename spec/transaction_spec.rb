require 'transaction'
describe Transaction do
  let(:date) { double :date }

  it 'returns transaction items' do
    allow(Time).to receive_message_chain(:now,
      :strftime).and_return(date)

  end
end
