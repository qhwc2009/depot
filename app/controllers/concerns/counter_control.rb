module CounterControl

  private

    def increment_counter
      session[:counter] ||= 0
      session[:counter] += 1
    end

    def clean_counter
      session[:counter] = 0
    end
end