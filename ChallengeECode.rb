use_bpm 180
use_synth :chipbass

# VARIABLES TO STORE SAMPLES
its_me_mario = "C:/Users/Drew_Borneman/Downloads/mario_sounds/mario_intro.wav"



# IT'S A ME, MARIO! SAMPLE
sample its_me_mario

sleep 8

# INTRO
play :e4
sleep 0.5
play :e4
sleep 1
play :e4
sleep 1
play :c4
sleep 0.5
play :e4
sleep 1
play :g4
sleep 2
play :g3
sleep 2


# CUSTOM MARIO SAMPLES
sample its_me_mario
sleep 2

sample "C:/Users/Drew_Borneman/Downloads/mario_sounds/pipe.wav"

sleep 2

sample "C:/Users/Drew_Borneman/Downloads/mario_sounds/coin.wav"

sleep 2

sample "C:/Users/Drew_Borneman/Downloads/mario_sounds/oneup.wav"
sleep 2


# MUSHROOM SAMPLE
sample "C:/Users/Drew_Borneman/Documents/Audacity/Super Mario Bros. - Mushroom Sound Effect.wav"
