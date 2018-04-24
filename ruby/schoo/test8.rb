# teacher = ["noro","miyashita"]
# teacher[1]
# teacher << "nakao"
# teacher.length
# teacher.sort
# teacher.sample

# class Blog
#   def initialize(title)
#     @title = title
#   end
  
#   def title
#     @taitle
#   end
# end

# array = []

# 3.times do |n|
#   blog = Blog.new("title#{n}")
#   array << blog
# end

# p array

member = {ceo: "noro",rails_teacher: "miyashita",ai_teacher:"nakao"}
member[:ceo]
member.store(:rails_mentor,"aoki")
p member
member.length
member.has_key?(:ceo)
member.has_key?(:hoge)