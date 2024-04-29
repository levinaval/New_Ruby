class DiaryEntry
  attr_reader :date, :content

  def initialize(date, content)
    @date, @content = date, content
  end

  def to_s
    "#{@date}: /n#{@content}"
  end
end

class OnlineDiary
  def initialize
    @entries = []
  end

  def add_entry(entry)
    @entries << entrys
  end
end