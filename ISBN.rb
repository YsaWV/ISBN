def ten(isbn)
    isbn.is_a? String
    isbn = isbn.delete("-")
    #raise No10DigitISBNAvailable if isbn =~ /^979/
    case isbn.size
    	when 10 then isbn = isbn[0..9]
    		true
    
    	when 13 then isbn = isbn[0..12]
    #else raise Invalid10DigitISBN
    	true
    end
    # case ck = (11 - (isbn.split(//).zip((2..10).to_a.reverse).inject(0) {|s,n| s += n[0].to_i * n[1]} % 11))
    # when 10 then isbn << "X"
    # when 11 then isbn << "0"
    # else isbn << ck.to_s
    # end
end

#ten("0-321-14653-0")