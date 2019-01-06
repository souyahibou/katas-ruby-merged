class Bob
    def hey(user_remark)
        case user_remark
        when /^[A-Z\W\d]*[A-Z][A-Z\W\d]*$/  then 'Whoa, chill out!'
        when proc { |r|  (r =~ /\S/).nil? } then 'Fine. Be that way!'
        when /.*\?\Z/ then 'Sure.'
        else 'Whatever.'
        end
    end
end
