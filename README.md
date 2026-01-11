# Overpass API Status Monitor

A simple, client-side web application for monitoring the health and performance of Overpass API servers in real-time.

![Card View](screenshot-single-card.png)

![Table View](screenshot-table-view.png)

## Features

- **Two layouts** — Card view for detailed info, Table view for compact monitoring
- **Real-time monitoring** — Latency, query slots, active queries, data age, and version
- **Live sparkline graphs** — Visualize latency and activity trends over time
- **Persistent history** — Graphs and data persist across page reloads
- **Customizable columns** — Show/hide metrics to focus on what matters
- **Shareable config** — Share your setup via URL parameters
- **Drag-and-drop ordering** — Arrange servers in custom order
- **Dark/light theme** — Automatic or manual theme switching
- **Export/import configs** — Save and restore server configurations
- **Landmark tests** — Test queries against iconic locations worldwide

## Color Coding

- **Green** — Healthy (fast latency, slots available, fresh data, latest version)
- **Orange** — Warning (moderate latency, some slots in use, older data/version)
- **Red** — Issue (slow latency, no slots, stale data)

## Demo

See it in action: [skeffling.net/overpass-status](https://skeffling.net/overpass-status)

## Usage

Simply open `index.html` in a web browser. No build step or server required.

Works with public Overpass servers (like overpass-api.de) and self-hosted instances.

## License

MIT
