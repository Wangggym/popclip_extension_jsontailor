# JSON Tailor PopClip Extension

One-click loading of selected JSON text into the [JSON Tailor](https://jsontailor.top) online editor for formatting and editing.

## Features

- 🎯 **Smart Detection**: Only appears when JSON-formatted text is selected
- ⚡ **One-Click Loading**: Directly opens selected JSON in JSON Tailor
- 🔧 **Online Editing**: Edit and validate using the powerful Monaco editor

## Installation

### Method 1: Package Installation (Recommended)
Double-click the `JSON_Tailor.popclipextz` file to install

### Method 2: Snippet Installation
Copy the contents of `JSON Tailor.popcliptxt`, select the text, and click install in PopClip

## Usage

1. Select any JSON text
2. Click the `{}` icon in the PopClip popup menu
3. JSON Tailor will automatically open in your browser with your JSON loaded

## Example

```json
{"name": "Test", "age": 25, "active": true}
```

Select the JSON above and click the JSON Tailor button in PopClip to try it out!

## Development

```bash
# Build extension
make build

# Clean files
make clean
```

## License

MIT License - see [LICENSE](LICENSE) file for details