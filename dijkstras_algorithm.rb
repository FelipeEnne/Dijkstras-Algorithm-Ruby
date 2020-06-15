@infinity = 100

def shortest_path_wg(matrix, init = 0)
  
  vertex = []
  v = matrix[0].length
  dist = []
  prev = []
  
  v.times do |i|
    dist << @infinity
    prev << -1
    vertex << i
  end
  
  dist[init] = 0
  
  while vertex.length > 0

    u = vertex.shift
    
    matrix[u].each_with_index do |i,j|
      
      next if i == 0
      alt =  dist[u] + i
      if alt < dist[j]
        dist[j] = alt
        prev[j]  = i
      end
      
    end
  end

  dist
  
end