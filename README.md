# Overpass API Status Monitor

A simple, client-side web application for monitoring the health and performance of Overpass API servers in real-time.

I built this while setting up my own Overpass servers. Once they were running, I wanted a way to make sure everything was still looking good - updating itself properly and responding to queries.

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

## Configuration (Self-Hosted)

If you host your own instance, you can configure defaults by creating a `config.json` file:

```json
{
  "servers": [
    { "name": "My Server", "url": "https://overpass.example.com" },
    { "name": "Backup", "url": "https://overpass2.example.com" }
  ],
  "minRefresh": 180,
  "allowCustomServers": true,
  "showHelp": true,
  "showAbout": true
}
```

Copy `config.example.json` to `config.json` and edit as needed.

| Option | Description |
|--------|-------------|
| `servers` | Default servers for new visitors |
| `minRefresh` | Minimum refresh interval in seconds (e.g., 180 = 3 min) |
| `allowCustomServers` | Set to `false` to prevent users adding their own servers |
| `showHelp` | Set to `false` to hide the help link |
| `showAbout` | Set to `false` to hide the about button |

Default servers only apply to new visitors. The `minRefresh` and `allowCustomServers` restrictions apply to all users.

**Simple status page:** To create a minimal status-only page for your Overpass server, set `allowCustomServers`, `showHelp`, and `showAbout` all to `false`. This hides navigation and editing options, showing only server status.

## Documentation

See [help.html](help.html) for full documentation.

## License

MIT
