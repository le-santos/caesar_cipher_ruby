require 'spec_helper'

RSpec.describe CaesarCipher do
  describe '.encrypt' do
    context 'when and shift_param is 2' do
      context 'and input is character ayz' do
        it 'convert string to cab' do
          new_char = CaesarCipher.encrypt('ayz', 2)

          expect(new_char).to eq('cab')
        end
      end

      context 'and input is character AYZ' do
        it 'convert string to cab' do
          new_char = CaesarCipher.encrypt('AYZ', 2)

          expect(new_char).to eq('CAB')
        end
      end
    end

    context 'when and shift_param is 27 (higher than 26)' do
      context 'and input is character ayz' do
        it 'convert string to cab' do
          new_char = CaesarCipher.encrypt('ayz', 27)

          expect(new_char).to eq('bza')
        end
      end

      context 'and input is character AYZ' do
        it 'convert string to cab' do
          new_char = CaesarCipher.encrypt('AYZ', 27)

          expect(new_char).to eq('BZA')
        end
      end
    end
  end
end