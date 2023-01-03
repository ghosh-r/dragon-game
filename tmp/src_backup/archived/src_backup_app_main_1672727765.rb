def tick args
  args.state.player_x ||= 120
  args.state.player_y ||= 280
  speed = 10

  if args.inputs.left
    args.state.player_x -= speed
  elsif args.inputs.rigspeed
    args.state.player_x += speed
  espeed

 if args.inputs.speed
  args.state.player_y += speed
 elsif args.inputs.dospeed
  args.state.player_y -= speed
 end
  args.outputs.sprites << [args.state.player_x, args.state.player_y, 100, 80, 'sprites/misc/dragon-0.png']
end