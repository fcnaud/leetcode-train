# @param {String[]} ops
# @return {Integer}

def cal_points(ops)
  res = Array.new
  ops.each do |op|
    case op
      when 'C'
        res.pop if res.size >= 1
      when 'D'
        res.push res[-1] * 2 if res.size >= 1
      when '+'
        res.push res[-1] + res[-2] if res.size >= 2
      else
        res << op.to_i
    end
  end
  res.sum
end