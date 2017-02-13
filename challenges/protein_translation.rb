class InvalidCodonError < StandardError
end

class Translation
  CODON_MAP = {
    "AUG" => "Methionine",
    "UUU" => "Phenylalanine",
    "UUC" => "Phenylalanine",
    "UUA" => "Leucine",
    "UUG" => "Leucine",
    "UCU" => "Serine",
    "UCC" => "Serine",
    "UCA" => "Serine",
    "UCG" => "Serine",
    "UAU" => "Tyrosine",
    "UAC" => "Tyrosine",
    "UGU" => "Cysteine",
    "UGC" => "Cysteine",
    "UGG" => "Tryptophan",
    "UAA" => "STOP",
    "UAG" => "STOP",
    "UGA" => "STOP"
  }

  def self.of_rna(str)
    codons = str_to_codons(str)
    protein = []
    codons.each do |codon|
      aminoacid = of_codon(codon)
      break if aminoacid == 'STOP'
      protein << aminoacid
    end
    protein
  end

  def self.of_codon(str)
    out = CODON_MAP[str]
    raise InvalidCodonError if out.nil?
    out
  end

  def self.str_to_codons(str)
    codons = []
    while str.size >= 3 do
      codons << str[0..2]
      str = str[3..-1]
    end
    codons
  end
end
