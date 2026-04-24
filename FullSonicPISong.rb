vocals = "C:/Users/Drew_Borneman/Documents/Audacity/Journey - Separate Ways (Worlds Apart) (Vocals Only).wav"
vocals2 = "C:/Users/Drew_Borneman/Documents/Audacity/Journey - Dont Stop Believin (Vocals Only).mp3"
vocals3 = "C:/Users/Drew_Borneman/Documents/Audacity/Journey - Dont Stop Believin (Vocals Only).ogg"
seperateWays = [:e5,:e4,:b4,:e4,:f5,:e4,:b4,:e4,:g5,:e4,:b4,:e4,:b4,:e4,:b4,:e4,]
dontstopBelievin = [:e4,:f4,:e4,:c4]
sleepChange = [3,2,1,4,]
sleepChange2 = [2,2,1,0.25,0.25,]
sleepChange3 = [4.5,4.5,4.5,4.5,1.5,]
i = 0

use_bpm 131

live_loop :intro do
  20.times do
    use_synth :organ_tonewheel
    16.times do
      play(seperateWays[i])
      sleep 0.5
      i = i + 1
      print i
    end
    i = 0
  end
  stop
end


8.times do
  sample vocals
end

sleep 16

live_loop :trance do
  30.times do
    sample :bass_trance_c, amp: 2
    sleep(sleepChange[i])
    i = i + 1
    print i
    i = 0
  end
  stop
end

sleep 16

live_loop :hard do
  20.times do
    sample :drum_bass_hard, amp: 5
    sleep(sleepChange2[i])
    i = i + 1
    print i
    i = 0
  end
  stop
end

sleep 16

28.times do
  sample :ambi_choir, amp: 4, sustain: 10, rate: 0.80
  sleep 4
  i = i + 1
  print i
  i = 0
end

sleep 5

4.times do
  x = 1
  
  4.times do
    sample :bass_trance_c, amp: x
    sleep 1
    x = x - 0.25
  end
end

use_bpm 119

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
    sleep 1
    x = x + 0.25
  end
end

live_loop :main do
  30.times do
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
  stop
end

sleep 2

live_loop :notes do
  8.times do
    use_synth :piano
    changing_notes :e2,:f2,:g2,:b2
    changing_notes :b2,:c3,:d3,:c3
    changing_notes :c3,:d3,:e3,:a2
    changing_notes :a2,:d3,:e3,:r
  end
  stop
end

sleep 62

8.times do
  sample vocals2, rate: 1
end

live_loop :drums do
  30.times do
    sample :drum_cymbal_soft, amp: 3
    sleep 4
  end
  stop
end

sleep 16

live_loop :bass do
  8.times do
    sample :bass_thick_c
    sleep 6
  end
  stop
end

sleep 50

8.times do
  sample vocals3, rate: 1
end
stop
