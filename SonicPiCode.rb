vocals = "C:/Users/Drew_Borneman/Documents/Audacity/Journey - Separate Ways (Worlds Apart) (Vocals Only).wav"


seperateWays = [:e5,:e4,:b4,:e4,:f5,:e4,:b4,:e4,:g5,:e4,:b4,:e4,:b4,:e4,:b4,:e4,]
sleepChange = [3,2,1,4,]
sleepChange2 = [2,2,1,0.25,0.25,]
i = 0


use_bpm 131


live_loop :song do
  8.times do
    sample vocals
  end
end


use_synth :organ_tonewheel
4.times do
  16.times do
    play(seperateWays[i])
    sleep 0.5
    i = i + 1
    print i
  end
  i = 0
end




sleep 16

live_loop :cymbal do
  sample :bass_trance_c, amp: 2
  sleep(sleepChange[i])
  i = i + 1
  print i
  i = 0
end


sleep 16

live_loop :bass do
  sample :drum_bass_hard, amp: 3
  sleep(sleepChange2[i])
  i = i + 1
  print i
  i = 0
end

sleep 16

live_loop :dub do
  sample :ambi_choir, amp: 4
  sleep 4
  i = i + 1
  print i
  i = 0
end

sleep 16


4.times do
  x = 1
  
  
  
  
  
  
  4.times do
    sample :bass_trance_c, amp: x
    sleep 1
    x = x - 0.25
  end
  
end







song 2








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








