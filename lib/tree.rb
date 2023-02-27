class Tree
  def initialize(root = nil)
    @root = root
  end
  def breadth_first_traversal(node)
    result = []
    nodes_to_visit = [node]

    while nodes_to_visit.length > 0
      # removes first indexed node
      shift_node = nodes_to_visit.shift
      # add node to results array
      result.push(shift_node[:value])
      # add children of node to nodes_to_visit array
      nodes_to_visit = nodes_to_visit + shift_node[:children]
    end
    result
  end

  # def depth_first_traversal(node)
  #   result = []
  #   nodes_to_visit = [node]

  #   while nodes_to_visit.length > 0
  #     shift_node = nodes_to_visit.shift
  #     result.push(shift_node[:value])
  #     nodes_to_visit = shift_node[:children] + nodes_to_visit
  # end

  # recursive version
  def depth_first_traversal(node, result = [])
    # visit each node (add it to the list of results)
    result.push(node[:value])
  
    node[:children].each do |child|
      # visit each child node
      depth_first_traversal(child, result)
    end
  
    result
  end

  def get_element_by_id(string)

    nodes_to_visit = [@root]

    while nodes_to_visit.length > 0
      pop_node = nodes_to_visit.pop

      if pop_node[:id] == string
        return pop_node
      end

      # nodes_to_visit =  nodes_to_visit + pop_node[:children]
      nodes_to_visit =  nodes_to_visit + pop_node[:children]
      
    end

    return nil

  end

end