require 'spec_helper'
require 'agencia'

describe 'Agencia' do
  it 'Até 25 anos, dois meses e 15 dias: Sala 1' do
    expect(screening('15/02/1996')).to eq('Sala 1')
  end

  it 'de 25 anos, 2 meses e 16 dias até 45 anos e 1 mês: Sala 2' do
    expect(screening('15/02/1986')).to eq('Sala 2')
  end

  it 'de 45 anos,1 mês e 1 dia até 65 anos: Sala 3' do
    expect(screening('15/02/1966')).to eq('Sala 3')
  end

  it 'mais velhos que 65 anos na Sala 4' do
    expect(screening('15/02/1951')).to eq('Sala 4')
  end
end