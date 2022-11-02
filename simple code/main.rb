in_thread do
  loop do
    sample :drum_heavy_kick
    sleep 0.5
  end
end

in_thread do
  sleep 0.5
  loop do
    sample :drum_snare_hard
    sleep 1
  end
end

in_thread do
  sleep 0.25
  loop do
    sample :drum_cymbal_closed
    sleep 0.5
  end
end

in_thread do
  loop do
    sample :drum_cymbal_open, amp: 0.2
    sleep 4
  end
end

in_thread do
  sleep 3.9
  loop do
    sample :drum_snare_soft
    sleep 4
  end
end

in_thread do
  with_fx :reverb do
    use_synth :sine
    loop do
      play chord( :Db4, :minor)
      sleep 1.75
      play chord( :Db4, :minor)
      sleep 0.5
      play chord( :Db4, :minor)
      sleep 1.75
      play chord( :B3, :major)
      sleep 1.75
      play chord( :b3, :major)
      sleep 0.5
      play chord( :b3, :major)
      sleep 1.75
    end
  end
end

in_thread do
  use_synth :sine
  loop do
    play :Db2
    sleep 1.75
    play :Db2
    sleep 0.5
    play :Db2
    sleep 1.75
    play :b1
    sleep 0.5
    play :b1
    sleep 1.25
    play :b2, release: 0.4
    sleep 0.25
    play :b1, release: 0.4
    sleep 0.25
  end
end

in_thread do
  with_fx :gverb do
    with_fx :wobble do
      use_synth :chiplead
      loop do
        play_pattern_timed chord(:Db5, :minor), 0.25, amp: 0.1, release: 0.4
      end
    end
  end
end