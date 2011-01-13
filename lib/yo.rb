module Yo

  def method_missing(method, *args)
    process_metainf_from(method, *args)
    do_what_you_have_to
    nil
  end

  private

  def process_metainf_from(method, *args)
    if value = args.detect {|a| String === a}
      @__value = value
    end

    case method
    when :it then {}
    when :has, :have
      @__have = true
      if args.detect {|a| a == :not }
        @__negative = true
      end
    when :maybe, :might, :may
      @__maybe = true
    when :accessor, :property
      @__have_what = :accessor
    when :reader, :getter
      @__have_what = :reader
    when :writer, :setter
      @__have_what = :writer
    when :privacy
      @__set_private_method = true
    end
  end

  def do_what_you_have_to
    if @__have && !@__negative
      string = case @__have_what
      when :reader
        string = """
          def #{@__value}
            @#{@__value}
          end
        """
      when :writer
        string = """
          def #{@__value}=(value)
            @#{@__value} = value
          end
        """
      when :accessor, nil
        string = """
          def #{@__value}
            @#{@__value}
          end
          def #{@__value}=(value)
            @#{@__value} = value
          end
        """
      end
      class_eval string
    end
  end

end
