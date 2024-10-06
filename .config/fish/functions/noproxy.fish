function noproxy
  export http_proxy=""
  export https_proxy=$http_proxy
  export ftp_proxy=$http_proxy
  export socks_proxy=$http_proxy
  export rsync_proxy=$http_proxy
  export all_proxy=$http_proxy
  export HTTP_PROXY=$http_proxy
  export HTTPS_PROXY=$http_proxy
  export FTP_PROXY=$http_proxy
  export SOCKS_PROXY=$http_proxy
  export RSYNC_PROXY=$http_proxy
  export ALL_PROXY=$http_proxy
end
