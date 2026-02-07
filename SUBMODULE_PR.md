# Submodule PR Instructions

## Node Event Superschema Submodule

The implementation for the node-event-superschema has been completed on branch `implement-node-version`.

### Branch Details
- **Repository**: VlinderSoftware/node-event-superschema
- **Branch**: `implement-node-version`
- **Commit**: `06297cb78b2db66b453bf2ecc71cc0755744c548`

### To Create the PR

Since the submodule is a separate repository, a PR needs to be created manually:

1. Navigate to: https://github.com/VlinderSoftware/node-event-superschema
2. The branch `implement-node-version` contains all the implementation
3. Create a PR from `implement-node-version` to `dev` (or main branch)

### PR Title Suggestion
```
Implement Node.js/TypeScript version of event superschema
```

### PR Description Suggestion
```
This PR implements a complete Node.js/TypeScript version of the event superschema library, matching the functionality of the Python implementation.

## Features Implemented

- **Super Schema Validation**: JSON Schema validation using AJV with UUID format support
- **Event Dispatcher**: Type-based event routing with support for base types and default handlers
- **Send Event Function**: Event formatting with auto-generated UUIDs and data preprocessing
- **JWE Support**: Encrypted event dispatching and sending
- **JWS Support**: Signed event dispatching and sending

## Technical Details

- TypeScript with strict mode
- Comprehensive test coverage (21 tests, all passing)
- Full type definitions
- Dependencies: ajv, ajv-formats, uuid, node-jose

## Files Added

- Project configuration (package.json, tsconfig.json, jest.config.js)
- Core modules (superSchema, getEventDispatcher, getSendEventFunction)
- JWE/JWS modules (encryption and signing support)
- Test suites with full coverage of core functionality
- Updated documentation

## Testing

All tests pass:
```bash
npm test
```

Build succeeds:
```bash
npm run build
```

## Related

This implementation was created as part of the workspace-event-superschema multi-language project.
```

### After PR is Merged

Once the PR in the submodule repository is merged:
1. The parent workspace repository should be updated to point to the merged commit
2. The submodule reference in the parent repo can be updated accordingly
