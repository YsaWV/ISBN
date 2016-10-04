def ten(isbn)
    isbn.is_a? String
    isbn = isbn.delete("-")
  
    case isbn.size
    	when 10 then isbn = isbn[0..9]
    		true
    
    	when 13 then isbn = isbn[0..12]
 
    	true
    end

end

def ck_ten(isbn)  
    #puts isbn = isbn.delete("-")
    #"1,2,3,4".split(",").map(&:to_i)


    #puts ck = isbn.split("").map(&:to_i)
    isbn = isbn.scan /\w/
    isbn = isbn[0..9]
    sum = 0

    isbn.each_with_index do |s,n| 

        sum = sum + ((n+1).to_i * s.to_i)
    end

        
    ck  = sum % 11 
    if ck == 10  
            isbn << "X"
            digit = "X"
            
    elsif ck == 0 
            isbn << "0"
            #puts isbn
            digit = "0"
    else isbn << ck.to_s
    end

    digit

end


ck_ten("877195869")