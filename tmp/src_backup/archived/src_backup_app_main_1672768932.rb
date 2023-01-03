def tick args
  args.state.player ||= {
    x: 120,
    y: 280,
    w: 100,
    h: 80,
    speed: 10,
    path: 'sprites/misc/dragon-0.png'
  }

  args.state.fireballs ||= []

  args.state.target ||= {
    x: 800,
    y: 120,
    w: 128,
    w: 128
  }
  

  if args.inputs.left and args.inputs.up
    args.state.player.x -= args.state.player.speed / 2
    args.state.player.y += args.state.player.speed / 2
  end

  if args.inputs.left and args.inputs.down
    args.state.player.x -= args.state.player.speed / 2
    args.state.player.y -= args.state.player.speed / 2
  end

  if args.inputs.right and args.inputs.up
    args.state.player.x += args.state.player.speed / 2
    args.state.player.y += args.state.player.speed / 2
  end

  if args.inputs.right and args.inputs.down
    args.state.player.x += args.state.player.speed / 2
    args.state.player.y -= args.state.player.speed / 2
  end

  if args.inputs.left
    args.state.player.x -= args.state.player.speed
  elsif args.inputs.right
    args.state.player.x += args.state.player.speed
  end

  if args.inputs.up
    args.state.player.y += args.state.player.speed
  elsif args.inputs.down
    args.state.player.y -= args.state.player.speed
  end

  if args.state.player.x + args.state.player.w > args.grid.w
    args.state.player.x = args.grid.w - args.state.player.w
  end
  
  if args.state.player.x < 0
    args.state.player.x = 0
  end

  if args.state.player.y + args.state.player.h > args.grid.h
    args.state.player.y = args.grid.h - args.state.player.h
  end

  if args.state.player.y < 0
    args.state.player.y = 0
  end

  if args.inputs.keyboard.key_down.z ||
      args.inputs.keyboard.key_down.j ||
      args.inputs.controller_one.key_down.a
    args.state.fireballs << {
      x: args.state.player.x + args.state.player.w - 12,
      y: args.state.player.y + 10,
      w: 64,
      h: 64,
      path: 'sprites/fireball.png'
    }
  end

  args.state.fireballs.each do |fireball|
    fireball.x += args.state.player.speed + 2
  end

  args.outputs.sprites << [args.state.player, args.state.fireballs]
  args.outputs.labels << args.state.fireballs
end