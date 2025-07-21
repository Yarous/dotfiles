if status is-interactive
    zoxide init fish | source
    alias cls='clear'
    alias cd='z'
    alias get='doas pacman -S'
    alias ls='eza --icons --git'
    function yt-dw -d "Download best quality audio from YouTube as MP3"
        if test (count $argv) -eq 0
            echo "Error: Please provide a YouTube URL"
            return 1
        end
        yt-dlp -x --audio-format mp3 --audio-quality 0 -f bestaudio --embed-metadata --embed-thumbnail -o "~/Music/%(title)s.%(ext)s" -i $argv
    end
    fastfetch
end
set fish_greeting
