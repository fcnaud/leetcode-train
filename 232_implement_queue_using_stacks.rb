class MyQueue
  @st
  def initialize()
    @st = []
  end

  def push(x)
    my_push x
  end

  def my_push(x)
    if @st.size==0
      @st << x
    else
      tmp_val = self.pop
      my_push x
      @st << tmp_val
    end

  end

  def pop()
    ans = @st.last
    @st.pop
   ans
  end

  def peek()
    @st.last
  end

  def empty()
    @st.size==0
  end

end