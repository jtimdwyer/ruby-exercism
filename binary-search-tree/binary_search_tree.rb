class Bst
    attr_accessor :data, :left, :right
    def initialize data
        @data = data
        @left = nil
        @right = nil
    end

    def insert_or_step new_data, cur_node
        inserted = false
        if new_data > cur_node.data
            if cur_node.right.nil?
                cur_node.right = Bst.new new_data
                inserted = true
            end
            cur_node = cur_node.right
        else
            if cur_node.left.nil?
                cur_node.left = Bst.new new_data
                inserted = true
            end
            cur_node = cur_node.left
        end
        [cur_node, inserted]
    end

    def insert new_data
        cur = self
        inserted = false
        until inserted
            cur, inserted = insert_or_step new_data, cur
        end
    end

    def each
        if block_given?
            # left subtree
            unless self.left.nil?
                self.left.each { |x| yield x}
            end

            # the root
            yield self.data

            #the right subtree
            unless self.right.nil?
                self.right.each { |x| yield x}
            end
        else
            to_enum(:each)
        end
    end
end

