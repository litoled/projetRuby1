def chiffre_de_cesar(mot, chiffre)
  result = ""
  m = mot.length - 1
  for c in (0..m)
    ascii = mot[c].ord + num #la variable num n'existe pas, utilisé chiffre
    result += ascii.chr
  end
    puts result
  end

chiffre_de_cesar("Hello", 3)
#le programme marche si tu remplace num par chiffre, par contre, z ne reboucle pas avec a...


