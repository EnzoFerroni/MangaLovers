# MangaLovers

[![iOS](https://img.shields.io/badge/iOS%20%7C%20iPadOS-26%2B-000000?logo=apple)](https://developer.apple.com/ios/)
[![Swift](https://img.shields.io/badge/Swift-5-F05138?logo=swift&logoColor=white)](https://swift.org)
[![UIKit](https://img.shields.io/badge/UIKit-View%20Code-0A84FF)](https://developer.apple.com/documentation/uikit)
[![License](https://img.shields.io/badge/License-MIT-green)](LICENSE)

A manga-styled income tax dashboard built in UIKit with programmatic layout (view code).

## Table of Contents

- [About](#about)
- [Features](#features)
- [Built With](#built-with)
- [Getting Started](#getting-started)
- [Project Structure](#project-structure)
- [Team](#team)
- [License](#license)

## About

MangaLovers is a short UIKit challenge from the Apple Developer Academy |
Mackenzie. The team reproduced a design handoff for a personal income tax (IRPF)
check-in screen, styled like a manga page with hand-drawn typography and a red and
off-white palette. Every screen is built in code with Auto Layout, without
storyboards.

## Features

- Profile header with tax ID, birth date and address blocks
- Segmented control with Overview, Details and Profile tabs
- Refund summary, income section and bank card components
- Chart card illustrating earnings over time
- Custom "Draw Close" display font and manga-style assets

## Built With

- UIKit, view code with `NSLayoutConstraint` and `UIStackView`
- Reusable components: `CardView`, `DateView`, `GraficView`, `LabelComponent`
- Git flow with feature branches and pull requests

## Getting Started

Requirements: Xcode 26 or later.

```bash
git clone https://github.com/EnzoFerroni/MangaLovers.git
cd MangaLovers
open Checkin-UIKit/Checkin-UIKit.xcodeproj
```

Run on an iPad simulator for the intended layout.

## Project Structure

```
Checkin-UIKit/Checkin-UIKit/
├── Models/                 AppDelegate, SceneDelegate
├── Views/
│   ├── ViewController.swift            Main screen
│   ├── SegmentedControlViewComponent   Tab switcher
│   ├── RestitutionComponentView        Refund section
│   └── Components/                     Card, date, chart and label components
└── Fonts/                  Draw Close typeface
```

## Team

| Name | GitHub |
| --- | --- |
| Enzo Ferroni | [@EnzoFerroni](https://github.com/EnzoFerroni) |
| João Pedro Pioltini | [@JoaoPioltini](https://github.com/JoaoPioltini) |
| Leonardo Cruz | [@LeonardoCruz7](https://github.com/LeonardoCruz7) |
| Lucca Pivoto | [@LuccaPV](https://github.com/LuccaPV) |

## License

Released under the [MIT License](LICENSE). The Draw Close font is distributed under
its own license, included in `Assets.xcassets/draw-close`.
