module H2o
  class Node 
    def initialize(parser, position = 0)
    end
    
    def render(context, stream)
    end
  end
  
  # Nodelist
  #
  class Nodelist < Node
    attr_reader :parser
    
    def initialize(parser, position = 0)
     @parser = parser
     @stack = []  
    end
    
    def render(context = {}, stream = false)
      stream = [] unless stream
      context = Context.new(context) if context.is_a? Hash

      @stack.each do |node|
        node.render(context, stream)
      end
      
      stream.join
    end
    
    def <<(node)
      @stack << node
    end

    def length
      @stack.length
    end
  end
  
  class TextNode < Node
    def initialize(content)
      @content = content
    end

    def render(context, stream)
      stream << @content
    end
  end
  
  class VariableNode < Node
    def initialize (name, filters)
      @name = name
      @filters = filters.empty? ? nil : filters
    end
    
    def render(context, stream)
      variable = @name.is_a?(Symbol) ? context.resolve(@name) : @name
      variable = context.apply_filters(variable, @filters) if @filters
      stream << variable
    end
  end

  class CommentNode < Node
  end

end