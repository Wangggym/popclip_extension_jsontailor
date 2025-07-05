# Usage Examples

## Development Workflow

### 1. Build Extension
```bash
# Build extension package (directly packages JSON_Tailor.popclipext directory)
make build
```

### 2. Test Extension
```bash
# Check configuration files
make test
```

### 3. Install Extension
```bash
# Auto-install to PopClip
make install
```

### 4. Release Version
```bash
# Create release version
make release
```

### 5. Clean Files
```bash
# Clean build files (only removes generated .popclipextz file)
make clean
```

## File Structure

- `JSON_Tailor.popclipext/` - **Extension source directory** (contains all extension files)
  - `Config.plist` - Extension configuration
  - `icon.svg` - Extension icon
- `JSON_Tailor.popclipextz` - **Generated extension package** (double-click to install)
- `JSON Tailor.popcliptxt` - **Snippet version** (copy-paste to install)
- `Config.plist` - Base configuration file
- `icon.svg` - Base icon file
- `Makefile` - Automated build script

## Quick Test

1. Copy this JSON:
```json
{
  "name": "John Smith",
  "age": 28,
  "city": "New York",
  "hobbies": ["programming", "gaming", "music"],
  "active": true
}
```

2. Select this JSON text

3. Look for the `{}` icon in the PopClip popup menu

4. Click the icon - JSON Tailor will open automatically with your JSON loaded!

## Installation Methods

### Method 1: Package Installation (Recommended)
```bash
# Build and install
make build
make install
```

### Method 2: Manual Installation
1. Run `make build` to generate `JSON_Tailor.popclipextz`
2. Double-click the `.popclipextz` file to install

### Method 3: Snippet Installation
1. Copy the contents of `JSON Tailor.popcliptxt`
2. Select the copied text
3. Click "Install Extension" in PopClip menu

## Development Notes

- The `make build` command now directly packages the `JSON_Tailor.popclipext/` directory
- No file copying is needed - the extension directory contains all required files
- The `make clean` command only removes the generated `.popclipextz` file
- Source files remain unchanged during build/clean operations 