---
title: Introdução
sidebar_position: 1
slug: /
---

# Introdução

O presente documento destina-se a introduzir o Asky, uma inovadora aplicação móvel desenvolvida pelos alunos do módulo 10 de Engenharia da Computação do Inteli, classe de 2025, especificamente para atender às necessidades do renomado Hospital Sírio-Libanês. Este aplicativo surge como uma solução crítica para otimizar o processo de comunicação e solicitação de urgências no sistema de reabastecimento de medicamentos, enfrentando diretamente as ineficiências existentes no uso dos dispensadores eletrônicos Pyxis, atualmente implementados em cada andar e ala do hospital.

## Contexto do problema

Os dispensadores Pyxis são dispositivos automatizados utilizados para armazenar e controlar a dispensação de medicamentos dentro de instituições de saúde. Eles são fundamentais para a manutenção da segurança e eficácia na administração de medicamentos aos pacientes. No entanto, a área responsável por reabastecer esses dispensadores enfrenta desafios significativos devido a discrepâncias no estoque. Comummente, os enfermeiros, ao retirar medicamentos, podem levar mais unidades do que as registradas no sistema para agilizar seu trabalho, resultando em desencontros de inventário que impactam diretamente o atendimento subsequente.↳

Este cenário complica a gestão eficiente dos medicamentos, onde, frequentemente, enfermeiros encontram-se em situações críticas de falta de medicamentos necessários, sendo forçados a solicitar reabastecimentos de urgência. Atualmente, esse processo é realizado via WhatsApp, um método que carece de registros formais, histórico e transparência, deixando a liderança hospitalar sem visibilidade das operações e dos padrões de consumo.

## Aplicativo Asky

Asky foi concebido para resolver esses problemas de forma eficiente e transparente. Utilizando a tecnologia de QR Code, o aplicativo permite que os enfermeiros escaneiem os códigos nos dispensadores Pyxis para preencher automaticamente todos os dados necessários para a solicitação de reabastecimento. As solicitações são organizadas por prioridade em uma fila clara e são visíveis para todos os auxiliares de farmácia que utilizam o aplicativo, garantindo total visibilidade do estado do sistema e permitindo uma resposta rápida às urgências.

Além disso, Asky integra-se diretamente ao robô separador e à farmácia central, facilitando a reposição urgente de medicamentos, que podem ser entregues via tubos pneumáticos. Essa integração promove uma significativa redução no tempo de resposta às solicitações. Todos os processos são meticulosamente registrados em um log, que alimenta um dashboard administrativo. Este dashboard oferece insights valiosos sobre o sistema, desde o tempo médio de atendimento até análises detalhadas sobre quais dispensadores demandam mais atenção e possíveis movimentações suspeitas.

Com a implementação do Asky, o Hospital Sírio-Libanês estará equipado para enfrentar os desafios de gestão de medicamentos de uma maneira que é tanto tecnologicamente avançada quanto alinhada com as melhores práticas de transparência e eficiência operacional.

### Sprint 1:

Na Sprint 1, foi desenvolvido as personas e o mapa da jornada do usuário para entender melhor as necessidades dos usuarios. Além disso, a primeira versão da arquitetura do aplicativo foi realizada, uma matriz de risco para prever possíveis desafios. Foi desenvolvido um wireframe de baixa fidelidade para visualizar a interface e elaboraram as user stories. Por fim, formularam um plano de impacto ético, garantindo que o desenvolvimento do app esteja alinhado com princípios éticos.

<div >
  <iframe 
    src="https:&#x2F;&#x2F;www.canva.com&#x2F;design&#x2F;DAGDd-wWBaY&#x2F;cEyAgPoguuox_8HUzRau8w&#x2F;view?embed" allowfullscreen="allowfullscreen" allow="fullscreen">
  </iframe>
</div>
<a href="https:&#x2F;&#x2F;www.canva.com&#x2F;design&#x2F;DAGDd-wWBaY&#x2F;cEyAgPoguuox_8HUzRau8w&#x2F;view?utm_content=DAGDd-wWBaY&amp;utm_campaign=designshare&amp;utm_medium=embeds&amp;utm_source=link" target="_blank" rel="noopener">Sprint 1 - M10</a> de Felipe Campos


### Sprint 2:

Na Sprint 2, foi desenvolvida a segunda versão da arquitetura do aplicativo, adaptando-se aos feedbacks e insights obtidos anteriormente. Além disso, o backend foi criado utilizando a abordagem de microserviços para melhor escalabilidade e manutenção. Foi desenvolvida uma versão de alta fidelidade do wireframe, proporcionando uma visualização mais precisa da interface do usuário. A análise financeira foi realizada para avaliar a viabilidade econômica do projeto, e uma análise PESTEL ajudou a identificar fatores externos que poderiam impactar o lançamento e sustentabilidade do aplicativo.

<div>
  <iframe
    src="https:&#x2F;&#x2F;www.canva.com&#x2F;design&#x2F;DAGEvoP2cwU&#x2F;s87cXMXtTWK9af3QEkSvaA&#x2F;view?embed" allowfullscreen="allowfullscreen" allow="fullscreen">
  </iframe>
</div>
<a href="https:&#x2F;&#x2F;www.canva.com&#x2F;design&#x2F;DAGEvoP2cwU&#x2F;s87cXMXtTWK9af3QEkSvaA&#x2F;view?utm_content=DAGEvoP2cwU&amp;utm_campaign=designshare&amp;utm_medium=embeds&amp;utm_source=link" target="_blank" rel="noopener">Sprint 2 - M10</a> de Felipe Campos

### Sprint 3:

Nesta sprint, o foco foi em avançar a solução a fim de atingir o objetivo de ser escalável e de grande porte. Para isso, houveram adições no Back-End na aplicação, tais como: implementação de Kubernetes para a orquestração de microsserviços e implementação de sistema de Cache por meio do Redis. Além disso novas features foram desenvolvidas, como a adição de rotas para atualizar o Status das Requests, sistema de notificação e novas rotas de Request para materiais e assitência. Ainda relacionado a features da aplicação, no Front-End foram desenvolvidas novas telas de login, histórico e detalhamento de requisição. Além disso, foram executados testes de usabilidade para validar o a capacidade dos usuários de completar tarefas que foram designadas à eles.


### Sprint 4:

Na sprint 4, o foco foi finalizar todos os serviços e integrá-los. Além disso, práticas de CI/CD(contínua integração e desenvolvimento) foram implementados, com objetivo de agilizar e facilitar a adição de novas features, porém mantendo a segurança e a alta disponibilidade da aplicação. Uma das práticas adicionadas foi um serviço de logging, que aumenta a depuração, facilita o diagnóstico de erros e aumentar o traqueamento de eventos. Uma nova feature foi adicionada a aplicação, que é a capacidade de enviar notificações ao usuário mediante alguns eventos que ocorrem, como aceitação de um pedido.

### Sprint 5:

Na sprint 5, o objetivo for dar os polimentos finais da aplicação. Um dos pontos importantes da sprint 4 é definir a arquitetura final da solução, consequentemente, na sprint 5 busca-se concluir o que foi proposto. Para isso os fluxos de enfermeiro e auxiliar foram concluídos e completamente integrados. Aleḿ disso, foi criado um plano de comunicação que visa alcançar o público alvo da aplicação, no caso, os enfermeiros e auxiliares que irão utilizar a solução.