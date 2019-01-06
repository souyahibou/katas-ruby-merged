key = key_rev =  13
base_message = "This is my secret"
base_encrypted_message = "Guvf vf zl frperg"

def encryption(text, code)
    new_text=[]
    text.each_char do |chr|
				code = code % 26
				new_code = chr.ord + code
				new_chr = chr

				case chr.ord
				when 97..122 then new_chr=(((new_code - 97) % 26) + 97).chr; #miniscule conservation
				when 65..90 then  new_chr=(((new_code - 65) % 26) + 65).chr; #majuscule conservation
				when 32 then #espace conservation needless
				else

				end
				# puts chr + " = #{chr.ord}" + " #{new_code}  = #{new_chr}"   #test
				new_text << new_chr
    end
		new_text.join("")
end


def decryption(text, code)
    new_text=[]
    text.each_char do |chr|
				code = code % 26
				new_code = chr.ord - code
				new_chr = chr

				case chr.ord
				when 97..122 then new_chr=(122 - ((122 - new_code) % 26)).chr;
				when 65..90 then  new_chr=(90  - ((90  - new_code) % 26)).chr;
				when 32 then
				else

				end
				new_text << new_chr
    end
		new_text.join("")
end


##########Part 2##################################################################################################


#Part 2
class EncryptionEngine
  	attr_accessor :key, :custom_key

  	def initialize(key_rotation: 13, cipher_key: custom_key_generator )
  			@key = key_rotation
        @custom_key = cipher_key
  	end

    def encrypt(string)
      	encryption(string, @key)
    end

    def decrypt(string)
      	decryption(string, @key)
    end

  	def key_rotation=(new_key_rot)
  			@key = new_key_rot
  	end

    def custom_key_generator
        encrypter_engine ={}
        new_char = nil

        for base_chr in :a..:z do
            loop do
                new_char =((rand*100).to_i.modulo(26) + 97).chr.to_sym
                break unless encrypter_engine.value?(new_char)
            end
            encrypter_engine[base_chr] = new_char
        end

        for base_chr in :A..:Z do
            loop do
                new_char =((rand*100).to_i.modulo(26) + 65).chr.to_sym
                break unless encrypter_engine.value?(new_char)
            end
            encrypter_engine[base_chr] = new_char
        end

        return encrypter_engine
    end

    def cipher(string, custom_key = @custom_key)
        string.each_char.with_index{|str_chr, str_index| string[str_index] = custom_key[str_chr.to_sym].to_s if str_chr[/[a-zA-Z]/] }
    end

    def decipher(string, custom_key = @custom_key.invert)
        string.each_char.with_index{|str_chr, str_index| string[str_index] = custom_key[str_chr.to_sym].to_s if str_chr[/[a-zA-Z]/] }
    end
end


#########Part 3###################################################################################################



require 'minitest/autorun'

class EncryptionEngineTest < Minitest::Test
  def test_it_encrypts_using_rot13
    engine = EncryptionEngine.new
    output = engine.encrypt("My Message")
    assert_equal "Zl Zrffntr", output
  end

  def test_it_default_key_using_rot13
    engine = EncryptionEngine.new
    assert_equal 13, engine.key
  end

  def test_it_initialize_key_rotation
    engine = EncryptionEngine.new(key_rotation: 50)
    key_rot = engine.key
    assert_equal 50, key_rot
  end

  def test_it_changes_using_rot
    engine = EncryptionEngine.new
    output = engine.key_rotation = 10
    assert_equal 10, output
  end



  def test_it_generates_random_cipher_hash_key_with_all_letters
    engine = EncryptionEngine.new
    custom_key = engine.custom_key_generator
    assert_equal (:A..:Z).to_a + (:a..:z).to_a , custom_key.keys.sort
    assert_equal (:A..:Z).to_a + (:a..:z).to_a , custom_key.values.sort
  end

  def test_it_auto_initialize_cipher_hash_key
    engine = EncryptionEngine.new
    custom_key = engine.custom_key
    assert_equal (:A..:Z).to_a + (:a..:z).to_a , custom_key.keys.sort
    assert_equal (:A..:Z).to_a + (:a..:z).to_a , custom_key.values.sort
  end

  def test_it_initialize_cipher_hash_key
    @hash_key = {:a=>:r, :b=>:u, :c=>:g, :d=>:s, :e=>:k, :f=>:e, :g=>:p, :h=>:n, :i=>:v, :j=>:h, :k=>:o, :l=>:b, :m=>:f, :n=>:j, :o=>:q, :p=>:l, :q=>:y, :r=>:a, :s=>:c, :t=>:x, :u=>:z, :v=>:w, :w=>:d, :x=>:t, :y=>:m, :z=>:i, :A=>:F, :B=>:G, :C=>:H, :D=>:Z, :E=>:E, :F=>:R, :G=>:K, :H=>:J, :I=>:S, :J=>:D, :K=>:T, :L=>:X, :M=>:Y, :N=>:L, :O=>:Q, :P=>:C, :Q=>:W, :R=>:V, :S=>:B, :T=>:P, :U=>:A, :V=>:O, :W=>:M, :X=>:U, :Y=>:I, :Z=>:N}
    engine = EncryptionEngine.new(cipher_key: @hash_key)
    assert_equal @hash_key, engine.custom_key
  end

  def test_it_ciphers
    @hash_key2 = {:a=>:r, :b=>:u, :c=>:g, :d=>:s, :e=>:k, :f=>:e, :g=>:p, :h=>:n, :i=>:v, :j=>:h, :k=>:o, :l=>:b, :m=>:f, :n=>:j, :o=>:q, :p=>:l, :q=>:y, :r=>:a, :s=>:c, :t=>:x, :u=>:z, :v=>:w, :w=>:d, :x=>:t, :y=>:m, :z=>:i, :A=>:F, :B=>:G, :C=>:H, :D=>:Z, :E=>:E, :F=>:R, :G=>:K, :H=>:J, :I=>:S, :J=>:D, :K=>:T, :L=>:X, :M=>:Y, :N=>:L, :O=>:Q, :P=>:C, :Q=>:W, :R=>:V, :S=>:B, :T=>:P, :U=>:A, :V=>:O, :W=>:M, :X=>:U, :Y=>:I, :Z=>:N}
    engine = EncryptionEngine.new(cipher_key: @hash_key2)
    message = engine.cipher("abc")
    assert_equal "rug", message
  end

  def test_it_deciphers
    @hash_key2 = {:a=>:r, :b=>:u, :c=>:g, :d=>:s, :e=>:k, :f=>:e, :g=>:p, :h=>:n, :i=>:v, :j=>:h, :k=>:o, :l=>:b, :m=>:f, :n=>:j, :o=>:q, :p=>:l, :q=>:y, :r=>:a, :s=>:c, :t=>:x, :u=>:z, :v=>:w, :w=>:d, :x=>:t, :y=>:m, :z=>:i, :A=>:F, :B=>:G, :C=>:H, :D=>:Z, :E=>:E, :F=>:R, :G=>:K, :H=>:J, :I=>:S, :J=>:D, :K=>:T, :L=>:X, :M=>:Y, :N=>:L, :O=>:Q, :P=>:C, :Q=>:W, :R=>:V, :S=>:B, :T=>:P, :U=>:A, :V=>:O, :W=>:M, :X=>:U, :Y=>:I, :Z=>:N}
    @hash_key3 = @hash_key2.invert
    engine = EncryptionEngine.new(cipher_key: @hash_key3)
    message = engine.cipher("ske")
    assert_equal "def", message
  end




  def test_it_encryption_engine_works_completely
    engine = EncryptionEngine.new
    message = engine.cipher("My Message")
    output = engine.decipher(message)
    assert_equal "My Message", output
  end

end
# EncryptionEngineTest.runnables

##Part 1
puts base_message
puts base_encrypted_message
final_encrypted_message = encryption(base_message, key)
final_decrypted_message = decryption(base_encrypted_message, key_rev)
puts final_encrypted_message
puts final_decrypted_message

##Part 2
puts "\n\n"
engine = EncryptionEngine.new
output = engine.encrypt("My Message")
puts output  # outputs "Zl Zrffntr"
output2 = engine.decrypt("Zl Zrffntr")
puts output2 # outputs "My Message"

##Part 3
puts "\n\n"
p engine.custom_key
output3 = engine.cipher("My Message")
puts output3  # outputs "Zl Zrffntr"
output4 = engine.decipher(output3)
puts output4 # outputs "My Message"
