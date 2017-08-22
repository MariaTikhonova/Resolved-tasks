def to_nato(words)
a1=('a'..'z').to_a
a2=['Alfa', 'Bravo', 'Charlie', 'Delta', 'Echo', 'Foxtrot', 'Golfa', 'Hotel', 'India', 'Juliett', 'Kilo', 'Lima', 'Mike', 'November', 'Oscar', 'Papa', 'Quebec', 'Romeo', 'Sierra', 'Tango', 'Uniform', 'Victor', 'Whiskey', 'Xray', 'Yankee', 'Zulu']
a3= words.downcase.delete(" ").split(//)
nato_hash=Hash[a1.zip(a2)]
nato_hash["!"]="!"
nato_hash[","]=","
nato_hash["?"]="?"
nato_hash["."]="."
words_hash=nato_hash.select{|k,v| k=a3.index(k)}
p newar=a3.map{|i| words_hash[i]}.join(" ").delete(',')
end

to_nato("if you can read this")
to_nato("If you can read this")
to_nato("Did not see that coming")
to_nato("Go for it!")
to_nato("No, really?")