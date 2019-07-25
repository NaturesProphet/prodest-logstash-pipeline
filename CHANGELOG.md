# Change Log

All notable changes to this project will be documented in this file. See [standard-version](https://github.com/conventional-changelog/standard-version) for commit guidelines.

<a name="1.7.3"></a>
## [1.7.3](https://gitlab.es.gov.br/espm/Transcol-Online/Realtime/logstash/compare/v1.7.2...v1.7.3) (2019-06-26)



<a name="1.7.2"></a>
## [1.7.2](https://gitlab.es.gov.br/espm/Transcol-Online/Realtime/logstash/compare/v1.7.1...v1.7.2) (2019-04-22)


### Bug Fixes

* **TTL:** remoção do TTL em env e ajsute para 1 hora ([d1915f8](https://gitlab.es.gov.br/espm/Transcol-Online/Realtime/logstash/commit/d1915f8))



<a name="1.7.1"></a>
## [1.7.1](https://gitlab.es.gov.br/espm/Transcol-Online/Realtime/logstash/compare/v1.7.0...v1.7.1) (2019-04-22)



<a name="1.7.0"></a>
# [1.7.0](https://gitlab.es.gov.br/espm/Transcol-Online/Realtime/logstash/compare/v1.6.2...v1.7.0) (2019-03-25)


### Features

* **historico24horas:** banco de historico de 24 horas adicionado ao pipeline ([c090bef](https://gitlab.es.gov.br/espm/Transcol-Online/Realtime/logstash/commit/c090bef))



<a name="1.6.2"></a>
## [1.6.2](https://gitlab.es.gov.br/espm/Transcol-Online/Realtime/logstash/compare/v1.6.1...v1.6.2) (2019-02-21)



<a name="1.6.1"></a>
## [1.6.1](https://gitlab.es.gov.br/espm/Transcol-Online/Realtime/logstash/compare/v1.6.0...v1.6.1) (2019-02-20)



<a name="1.6.0"></a>
# [1.6.0](https://gitlab.es.gov.br/espm/Transcol-Online/Realtime/logstash/compare/v1.5.1...v1.6.0) (2019-02-20)


### Features

* **RabbitMQ:** consumo do RAbbitMQ OK ([fa88585](https://gitlab.es.gov.br/espm/Transcol-Online/Realtime/logstash/commit/fa88585))



<a name="1.5.1"></a>
## [1.5.1](https://gitlab.es.gov.br/espm/Transcol-Online/Realtime/logstash/compare/v1.5.0...v1.5.1) (2019-02-14)


### Bug Fixes

* **ISODate:** isodate habilitado no mongodb ([131daad](https://gitlab.es.gov.br/espm/Transcol-Online/Realtime/logstash/commit/131daad))



<a name="1.5.0"></a>
# [1.5.0](https://gitlab.es.gov.br/espm/Transcol-Online/Realtime/logstash/compare/v1.4.0...v1.5.0) (2019-02-14)


### Features

* **Mongo2:** saída para o segundo mongodb, que armazena dados por 2 semanas ([7ed7983](https://gitlab.es.gov.br/espm/Transcol-Online/Realtime/logstash/commit/7ed7983))



<a name="1.4.0"></a>
# [1.4.0](https://gitlab.es.gov.br/espm/Transcol-Online/Realtime/logstash/compare/v1.3.7...v1.4.0) (2019-02-14)


### Features

* **Mongo2:** saída para o segundo mongodb, que armazena dados por 2 semanas ([46a7a12](https://gitlab.es.gov.br/espm/Transcol-Online/Realtime/logstash/commit/46a7a12))



<a name="1.3.7"></a>
## [1.3.7](https://gitlab.es.gov.br/espm/Transcol-Online/Realtime/logstash/compare/v1.3.6...v1.3.7) (2019-02-06)



<a name="1.3.6"></a>
## [1.3.6](https://gitlab.es.gov.br/espm/Transcol-Online/Realtime/logstash/compare/v1.3.5...v1.3.6) (2019-02-06)



<a name="1.3.5"></a>
## [1.3.5](https://gitlab.es.gov.br/espm/Transcol-Online/Realtime/logstash/compare/v1.3.4...v1.3.5) (2019-02-05)



<a name="1.3.4"></a>
## [1.3.4](https://gitlab.es.gov.br/espm/Transcol-Online/Realtime/logstash/compare/v1.3.3...v1.3.4) (2019-02-05)


### Bug Fixes

* **LOCALIZACAO:** chave devolvida ao filtro ([9474b78](https://gitlab.es.gov.br/espm/Transcol-Online/Realtime/logstash/commit/9474b78))



<a name="1.3.3"></a>
## [1.3.3](https://gitlab.es.gov.br/espm/Transcol-Online/Realtime/logstash/compare/v1.3.2...v1.3.3) (2019-02-05)



<a name="1.3.2"></a>
## [1.3.2](https://gitlab.es.gov.br/espm/Transcol-Online/Realtime/logstash/compare/v1.3.1...v1.3.2) (2019-02-04)



<a name="1.3.1"></a>
## [1.3.1](https://gitlab.es.gov.br/espm/Transcol-Online/Realtime/logstash/compare/v1.3.0...v1.3.1) (2019-02-04)



<a name="1.3.0"></a>
# [1.3.0](https://gitlab.es.gov.br/espm/Transcol-Online/Realtime/logstash/compare/v1.2.1...v1.3.0) (2019-02-04)


### Features

* **upsert:** Agora não há mais redundância no Mongo. todos os dados são atualizados ([60e0def](https://gitlab.es.gov.br/espm/Transcol-Online/Realtime/logstash/commit/60e0def))



<a name="1.2.1"></a>
## [1.2.1](https://gitlab.es.gov.br/espm/Transcol-Online/Realtime/logstash/compare/v1.2.0...v1.2.1) (2019-01-24)



<a name="1.2.0"></a>
# [1.2.0](https://gitlab.es.gov.br/espm/Transcol-Online/Realtime/logstash/compare/v1.1.0...v1.2.0) (2019-01-24)


### Features

* **mongodb:** Adicionado um filtro 'mutate' para converter o array de localizacao em floats ([2adf647](https://gitlab.es.gov.br/espm/Transcol-Online/Realtime/logstash/commit/2adf647))



<a name="1.1.0"></a>
# 1.1.0 (2019-01-23)


### Features

* **Mongo:** Saída para o MongoDB :D ([e5f5494](https://gitlab.es.gov.br/espm/Transcol-Online/Realtime/logstash/commit/e5f5494))
