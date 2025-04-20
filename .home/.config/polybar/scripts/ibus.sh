engine=$(ibus engine)

case "$engine" in
"xkb:us::eng")
  echo "EN   "
  ;;
"libpinyin")
  echo "CN   "
  ;;
*)
  echo "$engine"
  ;;
esac
