#!/bin/sh
#
# TheFrenchGhosty's Ultimate YouTube-DL Scripts Collection: The ultimate collection of scripts for YouTube-DL
# https://github.com/TheFrenchGhosty/TheFrenchGhostys-Ultimate-YouTube-DL-Scripts-Collection
# https://github.com/TheFrenchGhosty
#
# Version: 3.1.1
#

yt-dlp --format "(bestaudio[acodec^=opus]/bestaudio)/best" --verbose --force-ipv4 --sleep-requests 1 --sleep-interval 5 --max-sleep-interval 30 --ignore-errors --no-continue --no-overwrites --download-archive archive.log --add-metadata --write-description --write-info-json --write-annotations --write-thumbnail --embed-thumbnail --extract-audio --match-filter "!is_live & !live" --output "$OUT_FOLDER/%(playlist_title)s.%(playlist_id)s/%(playlist_index)02d. %(upload_date)s - %(title)s.(%(uploader)s) [%(id)s].%(ext)s" --batch-file "Source - Playlists.txt" 2>&1 | tee output.log
