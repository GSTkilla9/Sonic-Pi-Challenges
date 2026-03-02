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
