vocals ="C:/Users/Drew_Borneman/Documents/Audacity/Journey - Dont Stop Believin (Vocals Only).wav"

dontstopBelievin = [:e4,:f4,:e4,:c4]
sleepChange = [4.5,4.5,4.5,4.5,1.5,]
i = 0

use_bpm 118



define :changing_notes do |n1, n2, n3, n4,|
  play n1
  sleep 0.5
  play n2
  sleep 0.5
  play n3
  sleep 0.5
  play n4
  
  sleep 2.5
end



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
  changing_notes :e2,:f2,:g2,:b2
  changing_notes :b2,:c3,:d3,:c3
  changing_notes :c3,:d3,:e3,:a2
  changing_notes :a2,:d3,:e3,:r
end




sleep 30

8.times do
  sample vocals, rate: 1
end

live_loop :bass do
  sample :drum_cymbal_hard
  sleep 2
end

sleep 16

live_loop :choir do
  sample :bass_thick_c
  sleep 6
end
