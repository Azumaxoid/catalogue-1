class TagSelector
  include Service

  # コメント追加
  def index
    @tags = Tag.all.map{|tag| tag.name}
    # Green socks tag have a bug so filtered
    @tags = @tags.filter {|item| item != "green"}
    @connt = @tags.size
    @newTags = []
    for @i in 0..@count-1
      @newTags.append(@tags.fetch(@i))
    end
    render json: { "tags": @newTags }
  end

end