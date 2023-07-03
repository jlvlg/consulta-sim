Feature: editar o cadastro de um paciente
  As a paciente
  I want to editar meus dados
  So that minhas informacoes no sistema estejam atualizadas

  Scenario: paciente alterado com sucesso
    Given o paciente existe
    And estou na pagina do paciente
    And clico em editar paciente
    And preencho o formulario corretamente
    When eu envio o formulario
    Then eu vejo uma mensagem que o paciente foi alterado com sucesso

  Scenario: dados invalidos
    Given o paciente existe
    And estou na pagina do paciente
    And clico em editar paciente
    And preencho o formulario incorretamente
    When eu envio o formulario
    Then eu vejo uma mensagem que um campo foi preenchido incorretamente