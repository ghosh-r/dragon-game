def tick args
  args.outputs.labels  << [640, 500, 'Hello Dragon!', 5, 1]
  args.outputs.labels  << [640, 460, 'Go to docs/docs.html and read it!', 5, 1]
  args.outputs.labels  << [640, 420, 'Join the Discord! https://discord.dragonruby.org', 5, 1]
  args.outputs.sprites << [576, 280, 600, 400, 'angela.jpg']
end
