10.times do |blog|
  Blog.create!(
    title: "My Blog Post #{blog}",
    body: "Obi-Wan is here. The Force is with him. 
    The plans you refer to will soon be back in 
    our hands. She must have hidden the plans in 
    the escape pod. Send a detachment down to retrieve 
    them, and see to it personally, Commander. 
    There'll be no one to stop us this time!"
  )
end

puts "10 blog posts created"

5.times do |skill|
  Skill.create!(
    title: "Rails #{skill}",
    percent_utilized: 15
  )
end

puts "5 skills posts created"

9.times do |portfolio_item|
  Portfolio.create!(
    title: "Portfolio title: #{portfolio_item}",
    subtitle: "My great service" ,
    body: "Your eyes can deceive you. Don't trust them. 
    You are a part of the Rebel Alliance and a traitor! 
    Take her away! As you wish. Still, she's got a lot 
    of spirit. I don't know, what do you think? 
    You don't believe in the Force, do you?",
    main_image: "http://placehold.it/600x400", 
    thumb_image: "http://placehold.it/350x200"
    )
end

puts "9 portfolio items created"


