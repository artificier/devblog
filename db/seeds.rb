#10個のブログを投稿してみよう
#schema.rb観ながらやるといい

3.times do |topic|
  Topic.create!(
    title: "Topic #{topic}" 
  )
end

10.times do |blog|
  Blog.create!(
    title: "My Blog Post #{blog}",
    body: "what shi",
	topic_id: Topic.last.id
  )
end

puts "10 blog post created"

5.times do |skill|
	Skill.create!(
	  title: "rails #{skill}",
	  percent_utilized: 15
	)
end

puts "5 skill created"

8.times do |portfolio_itme|
  Portfolio.create!(
    title: "Portfolio title] #{portfolio_itme}",
	subtitle: "Ruby on Rails",
	body: "Nice work is a future things to do create a good work for a entrepreneur",
	main_image: "http://placehold.it/600x400",
	thumb_image: "http://placehold.it/350x200"
  )
end


1.times do |portfolio_itme|
  Portfolio.create!(
    title: "Portfolio title] #{portfolio_itme}",
	subtitle: "Angular",
	body: "Nice work is a future things to do create a good work for a entrepreneur",
	main_image: "http://placehold.it/600x400",
	thumb_image: "http://placehold.it/350x200"
  )
end

puts "9 portfolio items created"

3.times do |technology|
  Portfolio.last.technologies.create!(
    name: "Tech#{technology}"
  )
end

puts "3 technologies created"