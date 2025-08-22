# Agents Configuration

## Build/Lint/Test Commands

- **Linting**:
  ```bash
  # Run stylua formatter
  stylua .
  
  # Run selene linter
  selene .
  ```
  
- **Testing**:
  No test framework detected in configuration. Code verification occurs through nvim.

## Code Style Guidelines

### Formatting
- Indentation: 2 spaces
- Line width: 120 characters
- Formatting tool: stylua

### Imports
- Use absolute paths when possible
- Group imports by type (core, plugins, utils)

### Error Handling
- Use `pcall` for critical operations (plugin loading)
- Provide user-friendly error messages

### Naming Conventions
- Variables and functions: `snake_case`
- Plugins: reference by their repository name (`lazy.nvim`)

### Key Rules
- Disable language server formatting: 
  ```json
  {"format.enable": false}
  ```
- Follow styling rules from `.stylua.toml`

### Editor Configuration
- Lazy plugin manager required
- Neodev setup enabled for enhanced Lua completion
