def baconian_cipher(message)
  dicc = {'a' => 'AAAAA', 'b' => 'AAAAB', 'c' => 'AAABA', 'd' => 'AAABB', 'e' => 'AABAA', 'f' => 'AABAB', 'g' => 'AABAB', 'h' => 'AABBB', 'i' => 'ABAAA', 'j' => 'ABAAA', 'k' => 'ABAAB', 'l' => 'ABABA', 'm' => 'ABABB', 'n' => 'ABBAA', 'o' => 'ABBAB', 'p' => 'ABBBA', 'q' => 'ABBBB', 'r' => 'BAAAA', 's' => 'BAAAB', 't' => 'BAABA', 'v' => 'BAABB', 'w' => 'BABAA', 'x' => 'BABAB', 'y' => 'BABBA', 'z' => 'BABBB'}
  r = []
  message.scan(/...../).each{|w| r << dicc.key(w)}
  r.join
end

# Pruebas
p baconian_cipher("BAABAAABAAAABAABAAABABBBAAABAABAAAAABBABAAAAAABABAAAAAABAAABAAABAABAAAABBAAAAABAABBAB") == "teesperoalascinco"
p baconian_cipher("ABABAAAAAAAAABAABABAAAAAABAABBAABAAAABAABAAABAAABBABBABBAAABBAABABAAAAAABAABAAAB") == "laclaveesdostres"