# DevTools Error and Warning codes
## Using DevTools error / warning logging
Using the logger is easy. It works by setting the `dev.log_warning` or `dev.log_error` scoreboard variable to the required code.
The scoreboard can be set on an entity, or on the default `dev.log` fake player.
The log will automatically display in chat, to anyone with the tag `dev.developer`.

This tag can be acquired by running: `/function devtools:get_tag`

## Error Codes
1. Unexpected error
2. Entity does not exist
3. Entity exists
4. Math error
5. Tag error
6. Score error

## Warning Codes
1. Deprecated function
2. Entity should not exist
3. Invalid target