use_bpm 131
live_loop :drew do
  use_synth :winwood_lead
  play :e5, amp: 5
  sleep 0.5
  play :e4, amp: 5
  sleep 0.5
  play :b4, amp: 5
  sleep 0.5
  play :e4, amp: 5
  sleep 0.5
  play :f5, amp: 5
  sleep 0.5
  play :e4, amp: 5
  sleep 0.5
  play :b4, amp: 5
  sleep 0.5
  play :e4, amp: 5
  sleep 0.5
  play :g5, amp: 5
  sleep 0.5
  play :e4, amp: 5
  sleep 0.5
  play :b4, amp: 5
  sleep 0.5
  play :e4, amp: 5
  sleep 0.5
  play :b4, amp: 5
  sleep 0.5
  play :e4, amp: 5
  sleep 0.5
  play :b4, amp: 5
  sleep 0.5
  play :e4, amp: 5
  sleep 0.5
end


sleep 8

live_loop :cymbal do
  sample :drum_cymbal_closed, amp: 3
  sleep 1
end

sleep 12

live_loop :bass do
  sample :drum_bass_hard, amp: 3
  sleep 1
end

sleep 16


live_loop :strong do
  sample :ambi_choir, amp: 5
  sleep 8
end










use_bpm 131
live_loop :drew do
  use_synth :organ_tonewheel
  play :e5, amp: 3
  sleep 0.5
  play :e4, amp: 3
  sleep 0.5
  play :b4, amp: 3
  sleep 0.5
  play :e4, amp: 3
  sleep 0.5
  play :f5, amp: 3
  sleep 0.5
  play :e4, amp: 3
  sleep 0.5
  play :b4, amp: 3
  sleep 0.5
  play :e4, amp: 3
  sleep 0.5
  play :g5, amp: 3
  sleep 0.5
  play :e4, amp: 3
  sleep 0.5
  play :b4, amp: 3
  sleep 0.5
  play :e4, amp: 3
  sleep 0.5
  play :b4, amp: 3
  sleep 0.5
  play :e4, amp: 3
  sleep 0.5
  play :b4, amp: 3
  sleep 0.5
  play :e4, amp: 3
  sleep 0.5
end

sleep 16

live_loop :cymbal do
  sample :bass_trance_c, amp: 2
  sleep 4
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

live_loop :hey do
  sample "C:/Users/Drew_Borneman/Documents/Audacity/11 SOUND EFFECTS (High Quality) - RBTrapHipHopRapRemixDubstep - Popular in 2020.wav", amp: 4, rate: -1, beat_stretch: 4
  sleep 2
end



