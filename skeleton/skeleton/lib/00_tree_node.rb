require "byebug"

class PolyTreeNode
    attr_reader :parent, :children, :value

    def initialize(value)
        @value = value
        @parent = nil
        @children = []
    end


    # def parent=(node)
                
    #     if node == nil
    #         @parent.children.each.with_index |el, i|
    #             if el == self
    #                 @parent.children.delete_at(i)
    #             end
    #         return nil
    #         end
    #     end
            
    #         @parent = node
    #     end
        
    #     if !node.children.include?(self)
    #         node.children << self
    #     end
    # end



    def parent=(node)
        
        if !self.parent == nil
            self.parent.children.each_with_index do |el, i|
                if self == el
                    @parent.children.delete_at(i)
                end
            end
        end

        @parent = node

        if node == nil
            return nil
        end         

        

        if !node.children.include?(self)
            node.children << self
        end
    end

end


# a = PolyTreeNode.new("a")
# b = PolyTreeNode.new("b")