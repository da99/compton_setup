
# === {{CMD}}
start () {
  local +x CONF="main.conf"
  if pgrep -f "picom .+/$CONF" &>/dev/null; then
    echo "=== picom already running." >&2
    return 0
  fi

  exec picom --config "$THIS_DIR"/$CONF
} # === end function
