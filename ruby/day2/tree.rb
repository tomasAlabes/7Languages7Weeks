# 2. The Tree class was interesting, but it did not allow you to specify a new tree with a clean user interface.
# Let the initializer accept a nested structure with hashes and arrays.
# You should be able to specify a tree like this: {'grandpa' => {'dad' => 'child 1' => {}, 'child 2' => {} }, 'uncle' => {'child 3' => {}, 'child 4' => {} } } }.

class Tree

  attr_accessor :children, :node_name

  #{’grandpa’ => { ’dad’ => {’child 1’ => {}, ’child 2’ => {} }, ’uncle’ => {’child 3’ => {}, ’child 4’ => {} } } }

  def initialize(name, children=[])
    if name.respond_to?('keys')
      root_node = name.first
      name = root_node[0]
      children = root_node[1]
    end

    if children.respond_to?('keys')
      children = children.map {|child_name, grandchildren| Tree.new(child_name, grandchildren) }
    end

    @node_name = name
    @children = children
  end

  def visit_all(&block)
    visit(&block)
    children.each { |c| c.visit_all(&block) }
  end

  def visit(&block)
    block.call self
  end

end

=begin
tree_test = Tree.new("Ruby",
                     [Tree.new("Reia"),
                      Tree.new("MacRuby")] )

tree_test2 = Tree.new({"Ruby" =>
                           {"Reia" => {},
                            "MacRuby" => {}}
                      })

tree_test.visit_all { |node| p node.node_name }
tree_test2.visit_all { |node| p node.node_name }
=end
