def tick args
  args.state.player_x ||= 120
  args.state.player
  args.outputs.sprites << [120, 280, 100, 80, 'sprites/misc/dragon-0.png']
end
