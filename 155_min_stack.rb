class Stack
  @num_st
  @min_st
  def initialize
    @num_st = Array.new
    @min_st = Array.new
  end

  def push(num)
    if @num_st.empty?
      @num_st<<num
      @min_st<<num
    else
      @num_st<<num
      @min_st<<(num<@min_st.last)?num:@min_st.last
    end
  end

  def pop
    return nil if @num_st.empty?
    @num_st.pop
    @min_st.pop
  end

  def top
    return nil if @num_st.empty?
    @num_st.last
  end

  def getMin
    return nil if @num_st.empty?
    @min_st.last
  end
end