# Turn Battle ExMon

![Elixir CI](https://github.com/tiago154/turn_battle_exmon/workflows/Elixir%20CI/badge.svg?branch=master)
[![Coverage Status](https://coveralls.io/repos/github/tiago154/turn_battle_exmon/badge.svg?branch=master)](https://coveralls.io/github/tiago154/turn_battle_exmon?branch=master)

## 🧐 Descrição

Pequeno projeto feito em `Elixir` que simula uma batalha de um player vs computador, como se fosse um jogo de Pokemon.

## 🌟 Pré-requisitos

Ter instalado Elixir. Mais informações de como instalar, [clique aqui](https://elixir-lang.org/install.html)

## 🎲 Explicação do jogo




## 🏁 Executando o jogo

Utilize o terminal iterativo do elixir, executando o comando

```bash
iex -S mix
```

Agora crie seu jogador, informando seu nome, nome do golpe com dano mediano,
nome do golpe que dá mais ou menos dano e o nome da habilidade de curar.

**Obs: utilize `atom` para o nome das habilidades**

Exemplo:

```elixir
player = ExMon.create_player("Nome do jogador", :chute, :soco, :curar)
```

Agora inicie o jogo:

```elixir
ExMon.start_game(player)
```

O jogo inicializará um computador para efetuar a partida contra o jogador.
Utilize o metodo `ExMon.make_move` para executar sua ação.

Exemplos:

```elixir
ExMon.make_move(:chute)
ExMon.make_move(:soco)
ExMon.make_move(:curar)
```

Assim que o jogador ou o computador chegar a **zero** pontos de vida, o jogo termina.


## Executando testes

```bash
mix test
```

Testes com coverage

```bash
mix coveralls.html --color
```

## Lint

```bash
mix credo
```
