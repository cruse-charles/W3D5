class PolyTreeNode
    attr_reader :parent, :children, :value

    def initalize(value)
        @value = value
        @parent = parent
        @children = []
    end


    def parent=(node)
        @parent = node
        children << parent.children
    end


end


# a = PolyTreeNode.new(a)
# b = PolyTreeNode.new(b)