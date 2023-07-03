Feature: remover um medico
  As a medico
  I want to remover o meu cadastro
  So that minhas informacoes sejam removidas do sistema

  Scenario: remocao sucedida
    Given o medico existe
    And estou na pagina do medico
    When eu clico para remover o medico
    Then eu vejo uma mensagem que o medico foi removido com sucesso

  Scenario: remocao cancelada
    Given o medico existe
    And estou na pagina do medico
    When eu clico para voltar
    Then eu sou redirecionado para a pagina anterior