require "byebug"

class PolyTreeNode
    attr_reader :parent, :children, :value

    def initialize(value)
        @value = value
        @parent = nil
        @children = []
    end


    def parent=(node)
                
        if node == nil
            @parent.children.each.with_index |el, i|
                if el == self
                    @parent.children.delete_at(i)
                end
            return nil
            end
            
            @parent = node
        end
        
        if !node.children.include?(self)
            node.children << self
        end
    end


end


# a = PolyTreeNode.new(a)
# b = PolyTreeNode.new(b)