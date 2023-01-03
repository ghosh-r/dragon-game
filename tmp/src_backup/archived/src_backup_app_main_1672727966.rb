def tick args
  args.state.player_x ||= 120
  args.state.player_y ||= 280
  speed = 10
  player_w = 100
  player_h = 80

  if args.inputs.left
    args.state.player_x -= speed
  elsif args.inputs.right
    args.state.player_x += speed
  end

 if args.inputs.up
  args.state.player_y += speed
 elsif args.inputs.down
  args.state.player_y -= speed
 end

 if args.state.player_x < 0



  args.outputs.sprites << [args.state.player_x, args.state.player_y, 100, 80, 'sprites/misc/dragon-0.png']
end