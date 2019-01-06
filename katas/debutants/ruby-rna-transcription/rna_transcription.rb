module BookKeeping
  VERSION = 4
end

class Complement
    @complement_transcription = {
      DNA: :RNA,
      :G => :C,
      :C => :G,
      :T => :A,
      :A => :U
    }

    def self.of_dna(nucleotides)
        nucleotides.chars.map do |dna_ncltd|
            (code = @complement_transcription[dna_ncltd.to_sym])? code : (return '')
        end.join
    end
end
