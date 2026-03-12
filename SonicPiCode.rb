
horns = "C:/Users/Drew_Borneman/Documents/Audacity/All Quiet on the Western Front (2022) OST - Remains [Extended].wav"

seperateWays = [:e5,:e4,:b4,:e4,:f5,:e4,:b4,:e4,:g5,:e4,:b4,:e4,:b4,:e4,:b4,:e4,]
sleepChange = [3,2,1,4,]
i = 0


use_bpm 131
use_synth :organ_tonewheel

live_loop :seperateWays do
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
  sample :bass_trance_c
  sleep(sleepChange[i])
  i = i + 1
  print i
  i = 0
end


sleep 16

live_loop :bass do
  sample :drum_bass_hard, amp: 3
  sleep 2
end

sleep 16

live_loop :dub do
  sample :ambi_choir, amp: 3, rate: -1
  sleep 8
end

sleep 16

live_loop :horns do
  sample horns
  sleep 8
end



