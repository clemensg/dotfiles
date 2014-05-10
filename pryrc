#Pry.editor = "emacsclient"
Pry.editor = proc { |file, line| "emacsclient +#{line} #{file}" }
#Pry.editor = "mvim"

Pry.config.history.file = "~/.history/pry"
