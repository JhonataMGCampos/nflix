#Language: pt

Funcionalidade: Cadastro de filmes
    Para que eu possa disponibilizar novos títulos no catálogo
    Sendo um gestor de catálogo
    Posso cadastrar um novo filme

    Cenario: Filme disponível
       Dado que "Vingadores Ultimato" é um novo filme
       E o status deste filme é "Disponível"
       E o ano de lançamento é "2019"
       E a data de estréia é "24/04/2019"
       E os atores são "Robert Downey Jr, Chris Evans, Brie Larson, Scarlett Johansson"
       E a sinpse do filme é "Após Thanos eliminar metade no universo, os vingadores terão que resolver esta treta."
       E escolhi uma capa muito bonita
       Quando eu faço o cadstro deste filme
       Então devo ver o novo filme na lista
       