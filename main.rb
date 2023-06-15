def merge_sort(an_ary)
  lhs_size = (an_ary.size / 2.0).round() - 1
  lhs = an_ary[0..lhs_size]
  rhs = an_ary[lhs_size + 1 ... an_ary.size]
  
  lhs = lhs.size > 1 ? merge_sort(lhs) : lhs
  rhs = rhs.size > 1 ? merge_sort(rhs) : rhs

  new_ary = []
  until lhs.size == 0 || rhs.size == 0
    lhs[0] > rhs[0] ? new_ary.push(rhs.slice!(0)) : new_ary.push(lhs.slice!(0))
  end
  new_ary = new_ary + lhs + rhs
  return new_ary
end
