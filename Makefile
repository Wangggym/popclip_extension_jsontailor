# JSON Tailor PopClip Extension Makefile

# Variables
EXT_NAME = JSON_Tailor
EXT_DIR = $(EXT_NAME).popclipext
EXT_ZIP = $(EXT_NAME).popclipextz
EXT_SNIPPET = "JSON Tailor.popcliptxt"
CONFIG_FILE = Config.plist

# Default target
.PHONY: all build clean install test help

all: build

# Build extension package
build: $(EXT_ZIP)

$(EXT_ZIP): $(EXT_DIR)
	@echo "📦 Building extension..."
	zip -r "$(EXT_ZIP)" "$(EXT_DIR)"
	@echo "✅ Extension package created: $(EXT_ZIP)"

# Clean generated files
clean:
	@echo "🧹 Cleaning files..."
	rm -f "$(EXT_ZIP)"
	@echo "✅ Clean completed"

# Install extension (on macOS)
install: $(EXT_ZIP)
	@echo "🚀 Installing extension..."
	open "$(EXT_ZIP)"
	@echo "✅ Extension sent to PopClip for installation"

# Test extension configuration
test:
	@echo "🔍 Checking configuration files..."
	@if [ -f "$(CONFIG_FILE)" ]; then \
		echo "✅ Config.plist exists"; \
		plutil -lint "$(CONFIG_FILE)" && echo "✅ Config.plist format is valid" || echo "❌ Config.plist format is invalid"; \
	else \
		echo "❌ Config.plist does not exist"; \
	fi
	@if [ -f $(EXT_SNIPPET) ]; then \
		echo "✅ Snippet file exists"; \
	else \
		echo "❌ Snippet file does not exist"; \
	fi

# Create release version
release: clean build
	@echo "🎉 Release version ready!"
	@echo "📦 Extension package: $(EXT_ZIP)"
	@echo "📄 Snippet file: $(EXT_SNIPPET)"
	@ls -la "$(EXT_ZIP)" $(EXT_SNIPPET)

# Display help information
help:
	@echo "JSON Tailor PopClip Extension - Available commands:"
	@echo ""
	@echo "  make build    - Build extension package"
	@echo "  make clean    - Clean generated files"
	@echo "  make install  - Install extension to PopClip"
	@echo "  make test     - Check configuration files"
	@echo "  make release  - Create release version"
	@echo "  make help     - Show this help message"
	@echo ""
	@echo "File descriptions:"
	@echo "  $(EXT_ZIP) - Extension installation package"
	@echo "  $(EXT_SNIPPET) - Snippet version" 