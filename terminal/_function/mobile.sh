
mobile() {
  echo "Changing \033[1;35mJAVA_HOME\033[0m to work with mobile 📱"
  export JAVA_HOME="/Applications/Android Studio.app/Contents/jre/jdk/Contents/Home"
  echo "\033[1;32mNow JAVA_HOME = \033[0m\033[1;33m$JAVA_HOME\033[0m"
}

backend() {
  echo "Changing \033[1;35mJAVA_HOME\033[0m to work with backend 💻"
  unset JAVA_HOME
  echo "\033[1;32mNow JAVA_HOME = \033[0m\033[1;33m$JAVA_HOME\033[0m"
}

