function vimium_mpv_noproxy
  noproxy

  # displays a notif for 7s of the video being played
  notify-send -t 7000 -i video-television \
    "Playing $(xclip -o -sel clip | xargs yt-dlp -e)"

  # plays the link in mpv
  mpv --stream-lavf-o-append=http_proxy="" --fs "$(xclip -o -sel clip)"
end
