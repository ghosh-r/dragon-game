def tick args
  args.state.player_x ||= 120
  args.state.player_y ||= 280

  if args.inputs.left
    args.state.player_x -= 10
  elsif args.inputs.right
    args.state.player_x += 10
  end

 if args.inputs.up
  args.state.player_y += 10
  
 elsif args.inputs.down
  args 
  
 end


  args.outputs.sprites << [120, 280, 100, 80, 'sprites/misc/dragon-0.png']
end

