# harvestbuddy-ios

Native iOS-app (Swift, SwiftUI) til Harvest Buddy. Al forretningslogik ligger i Harvest Buddys
API, som appen kun læser og skriver; appen er en tynd klient.
Beslutninger i `docs/adr/`. Repoet er public: intet herinde må afhænge af eller beskrive
private repos' interne forhold.

## Verbs (Foundry)

`mise run fix | lint | typecheck | test | audit | gate`. `gate` is the oracle; nothing merges
red. `mise run app:build` genererer Xcode-projektet og bygger appen (kræver macOS og Xcode).

## Layout

- `Sources/HarvestBuddyKit/` modeller, API-protokoller og `HTTPAPI`, view models i `Models/`.
  Ingen UIKit/SwiftUI her, så pakken kan testes uden for Xcode.
- `Tests/HarvestBuddyKitTests/` XCTest mod en optagende HTTP-klient og en falsk API.
- `App/` SwiftUI-appen, Keychain-sessionen og visninger i `Views/`. `project.yml` er XcodeGen-spec.

## Conventions

- UI-tekst og ADR'er på dansk, identifiers og kommentarer på engelsk. Fejltekster matcher webappen.
- Nye felter fra API'et er optional i modellerne; enum-lignende værdier er strenge.
- No em or en dashes anywhere.
