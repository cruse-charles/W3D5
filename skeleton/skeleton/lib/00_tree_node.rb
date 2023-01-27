require "byebug"

class PolyTreeNode
    attr_reader :parent, :children, :value

    def initialize(value)
        @value = value
        @parent = nil
        @children = []
    end


    

    def parent=(node)
        
        old_parent = @parent


        if !(self.parent == nil)
            @parent.children.each_with_index do |el, i|
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


    def add_child(child_node)
        child_node.parent=(self)
    end

    def remove_child(child_node)
        child_node.parent=(nil)
        raise 'error' if !self.children.include?(child_node)
    end

    
    def dfs(target_value)
        if self.value == target_value
            return self
        else
            self.children.each do |child|
                until child.empty?
                    child.dfs(target_value)
                end
            end
        end
    end


end


# a = PolyTreeNode.new("a")
# b = PolyTreeNode.new("b")