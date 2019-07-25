CREATE TABLE VEICULOS (
    ID BIGINT NOT NULL IDENTITY(1,1),
    LATITUDE FLOAT,
    timestamp DATETIME,
    CURSO INT,
    VELOCIDADE FLOAT,
    LONGITUDE FLOAT,
    ROTULO VARCHAR(10),
    DATAHORA BIGINT,
    IGNICAO BIT,
    CONSTRAINT PK_ID PRIMARY KEY NONCLUSTERED (ID) 
)





-- Exemplo de um registro completo
-- {
--     "_id" : ObjectId("5c4891d7c2bc52d1df000014"),
--     "jms_expiration" : NumberLong("1548267006967"),
--     "@version" : "1",
--     "ED2_ACIONADA" : false,
--     "jms_redelivered" : false,
--     "LATITUDE" : -20.115324,
--     "jms_delivery_mode_sym" : "persistent",
--     "@timestamp" : ISODate("2019-01-23T16:09:59.848Z"),
--     "jms_destination" : "topic://DadosRastreioPRODEST",
--     "DATAHORA" : NumberLong("1548259798000"),
--     "jms_message_id" : "ID:localhost-35028-1548075291496-3:1:17428579:1:1",
--     "jms_type" : null,
--     "LOCALIZACAO" : [
--         "-40.314872",
--         "-20.115324"
--     ],
--     "jms_reply_to" : null,
--     "MESSAGE_SUB_TYPE" : "MAXTRACK",
--     "ED1_ACIONADA" : false,
--     "LONGITUDE" : -40.314872,
--     "ED4_ACIONADA" : false,
--     "message" : "null",
--     "jms_correlation_id" : null,
--     "IDENTIFIER" : "8249117",
--     "CURSO" : 0,
--     "ED3_ACIONADA" : false,
--     "IGNICAO" : true,
--     "jms_priority" : 4,
--     "jms_timestamp" : NumberLong("1548259806967"),
--     "@uuid" : "895e7d94-83d9-4c13-bb04-54a250ee610e",
--     "ROTULO" : "15074",
--     "MESSAGE_TYPE" : "NAVIGATION"
-- }