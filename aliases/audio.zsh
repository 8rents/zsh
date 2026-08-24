# Audio Aliases
# =============
#
# flac library
export FLACS="$ANDROID/Media/Audio/Music/Library/flac"

# Finds all flac files in music library flac folder
# Abstract this command into a function with variable location and LAME sertings
alias flac2lame='find "$FLACS" -name "*.flac" -print0 | xargs -0 flac2mp3-v2'

# Rewrite the flac2mp3 scripts
