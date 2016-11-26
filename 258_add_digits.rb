# @param {Integer} num
# @return {Integer}
def add_digits(num)
    ret = num
    while ret>9
        ret = ret.to_s.bytes.map {|i| i-'0'.ord }.reduce(:+)
    end
    return ret
end