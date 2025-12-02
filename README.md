# Colirio Tracker

Um aplicativo para macOS desenvolvido em SwiftUI que roda na barra de menu para rastreamento do uso diário de colírio.

## Características

- 🎯 Roda na barra de menu do macOS para acesso rápido
- 💧 Registro rápido de aplicações de colírio com um clique
- 📝 Suporte para notas opcionais em cada registro
- 📊 Visualização do número de aplicações do dia
- 📅 Histórico completo de todas as aplicações
- 💾 Persistência de dados usando UserDefaults

## Requisitos

- macOS 13.0 ou superior
- Xcode 15.0 ou superior

## Como usar

1. Clone o repositório
2. Abra `ColirioTracker.xcodeproj` no Xcode
3. Build e execute o projeto (⌘R)
4. O app aparecerá na barra de menu com o ícone de gota 💧

## Funcionalidades

### Tela Principal
- Exibe o número de aplicações do dia
- Botão para registrar nova aplicação
- Campo opcional para adicionar notas
- Lista das aplicações do dia

### Histórico
- Visualização de todas as aplicações agrupadas por data
- Opção de excluir registros individuais

## Estrutura do Projeto

```
ColirioTracker/
├── ColirioTrackerApp.swift      # Ponto de entrada do app
├── Models/
│   ├── ColirioUsage.swift       # Modelo de dados para uso de colírio
│   └── ColirioStore.swift       # Store para gerenciar dados
├── Views/
│   ├── ContentView.swift        # View principal do menu
│   └── HistoryView.swift        # View do histórico
└── Assets.xcassets/             # Assets do app
```

## Licença

MIT License
