class HansardStatement < ActiveRecord::Base
  index do
    attribution
    heading
    topic
    text
  end
  
  belongs_to :hansard
  #belongs_to :mp
  
  def text
    return super.gsub(/\n/, '</p><p>')
  end
  
  def mp
    Mp.find_by_name(member_name)
  end
  
end
