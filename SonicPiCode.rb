vocals = "C:/Users/Drew_Borneman/Documents/Audacity/Journey - Separate Ways (Worlds Apart) (Vocals Only).wav"
seperateWays = [:e5,:e4,:b4,:e4,:f5,:e4,:b4,:e4,:g5,:e4,:b4,:e4,:b4,:e4,:b4,:e4,]
sleepChange = [3,2,1,4,]
sleepChange2 = [2,2,1,0.25,0.25,]
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
