# Lua-script-for-invalid-extension-handling
A Lua script for handling invalid extensions in FusionPBX, providing custom recordings and call routing.

# Lua Script for Invalid Extension Handling in FusionPBX

This repository contains a Lua script designed for FusionPBX to handle calls to invalid extensions. When a user dials a non-existent extension, the script plays a custom recording that provides users with a friendly message and additional call routing options.

## Features

- **Custom Recording**: Plays a personalized message for invalid extensions.
- **Call Routing**: Offers options to route the call to different departments or people.
- **Easy Integration**: The script can be easily integrated into your existing FusionPBX dialplan.

## Script Overview

When a call is made to an extension that does not exist, the script:
1. Answers the call.
2. Plays a pre-recorded message (e.g., "Hi, Vishnu. This is an invalid extension. To call support, dial 111. To talk with developer Vishnu, dial 888. To talk with Alan, dial 343").
3. Offers routing options based on user input.

## Installation

1. Copy the `check_extension.lua` script to your FusionPBX server's script directory:

   ```bash
   cp check_extension.lua /usr/share/freeswitch/scripts/

