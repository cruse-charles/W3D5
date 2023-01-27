class PolyTreeNode
    attr_reader :parent, :children, :value

    def initalize(value)
        @parent = nil
        @children = []
    end


    def parent=()
        children << parent.children
    end


end