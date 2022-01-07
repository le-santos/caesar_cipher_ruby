require 'spec_helper'

RSpec.describe CaesarCipher do
  describe '.call' do
    context 'when and shift_param is 2' do
      context 'and input is character a' do
        it 'convert string to c' do
          new_char = CaesarCipher.encrypt('a', 2)

          expect(new_char).to eq('c')
        end
      end

      context 'and input is character z' do
        it 'convert string to b' do
          new_char = CaesarCipher.encrypt('z', 2)

          expect(new_char).to eq('b')
        end
      end
    end
  end
end