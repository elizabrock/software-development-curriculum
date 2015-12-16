require "minitest/autorun"

# These helpers are just some toys if you want to try them!
# I pulled them out of the NSS-futureperfect-CLI repo.

def strip_control_characters_and_excesses(string)
  last =  string.split("\033[2;0f").last#.gsub(/(\e\[\d+\w)|(\e\[\w)/,"")
  if last.empty?
    ""
  else
    last.gsub(/(\e\[\d+\w)|(\e\[\w)/,"").gsub(" +","")
  end
end

def assert_includes_in_order input, *items
  input = strip_control_characters_and_excesses(input)
  regexp_string = items.join(".*").gsub("?","\\?")
  assert_match /#{regexp_string}/, input.delete("\n"), "Expected /#{regexp_string}/ to match:\n" + input
end
