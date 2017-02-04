
# === {{CMD}}
start () {
  local +x CONF="main.conf"
  if pgrep -f "compton .+/$CONF" &>/dev/null; then
    echo "=== Compton already running." >&2
    return 0
  fi

  exec compton --config "$THIS_DIR"/$CONF
} # === end function
