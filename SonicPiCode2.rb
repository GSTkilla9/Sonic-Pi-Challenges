dontstopBelievin = [:e4,:f4,:e4,:c4]
sleepChange = [4.5,4.5,4.5,4.5,1.5,]
i = 0

use_bpm 118

1.times do
  x = 0
  
  5.times do
    sample :bass_trance_c, amp: x
    sleep 2
    x = x + 0.25
  end
end


live_loop :main do
  use_synth :pluck
  4.times do
    play :b4
    play(dontstopBelievin[i])
    sleep 0.5
    play :c4
    sleep 0.5
    i = i + 1
  end
  i = 0
end

sleep 2

live_loop :notes do
  use_synth :piano
  play :e2
  sleep 0.5
  play :f2
  sleep 0.5
  play :g2
  sleep 0.5
  play :b2
  
  sleep 2.5
  
  play :b2
  sleep 0.5
  play :c3
  sleep 0.5
  play :d3
  sleep 0.5
  play :c3
  
  sleep 2.5
  
  play :c3
  sleep 0.5
  play :d3
  sleep 0.5
  play :e3
  sleep 0.5
  play :a2
  
  sleep 2.5
  
  play :a2
  sleep 0.5
  play :d3
  sleep 0.5
  play :e3
  
  sleep 3
end

sleep 30

live_loop :bass do
  sample :drum_cymbal_hard
  sleep 2
end

sleep 16


live_loop :choir do
  sample :bass_thick_c
  sleep 6
end
