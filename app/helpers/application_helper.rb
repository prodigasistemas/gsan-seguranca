module ApplicationHelper
  ICONES_MENU = {
    atendimento_ao_publico: 'fa-users',
    cadastro: 'fa-archive',
    micromedicao: 'fa-battery-full',
    faturamento: 'fa-bar-chart',
    cobranca: 'fa-envelope-o',
    arrecadacao: 'fa-balance-scale',
    relatorios: 'fa-pie-chart',
    gerencial: 'fa-line-chart',
    seguranca: 'fa-lock',
    batch: 'fa-cog',
    financeiro: 'fa-dollar',
    operacional: 'fa-cogs',
    desempenho: 'fa-area-chart'
  }

  def get_icone(modulo)
    nome_modulo = modulo.gsub(' ', '_').underscore.to_sym
    ICONES_MENU[nome_modulo]
  end
end
