def tick args
  args.state.player_x ||= 120
  args.state.player_y ||= 280
  speed = 10

  if args.inputs.left
    args.state.player_x -= 
  elsif args.inputs.rig
    args.state.player_x += 
  e

 if args.inputs.
  args.state.player_y += 
 elsif args.inputs.do
  args.state.player_y -= 
 end
  args.outputs.sprites << [args.state.player_x, args.state.player_y, 100, 80, 'sprites/misc/dragon-0.png']
end