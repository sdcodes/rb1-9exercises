require 'yaml'
MESSAGES = YAML.load_file('madlibs_messages.yml')


puts "the #{MESSAGES["adjective"].sample} brown #{MESSAGES["noun"].sample} #{MESSAGES["adverb"].sample}
#{MESSAGES["verb"].sample} the #{MESSAGES["adjective"].sample} yellow #{MESSAGES["noun"].sample}, 
      who #{MESSAGES["adverb"].sample} #{MESSAGES["verb"].sample} his #{MESSAGES["noun"].sample} and
      looks around."
      