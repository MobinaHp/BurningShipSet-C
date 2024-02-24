use_bpm 120
use_synth :hollow
a = 1
live_loop :ocean do
  sample "C:/git/FC02031/FinalProject/ocean.wav", amp: 0.01
  #sample :sn_dolf, amp: 0.4
  #sleep 10
  sample :bd_mehackit, amp: 0.4
  sleep 1
  sample :ambi_piano, amp: 0.6
  sleep 1
end

define :intro do
  sample :ambi_lunar_land, amp: 3
  sleep 2
end

define :part1 do
  play :E5, amp: 4
  sleep a
  play :Ds5, amp: 3
  sleep a
  play :E5, amp: 3
  sleep a
  play :Ds5, amp: 3
  sleep a
  play :E5, amp: 4
  sleep a
  play :B, amp: 3
  sleep a
  play :D5, amp: 3
  sleep a
  play :C5
  sleep a
  play :E5, amp: 4
  sleep a
  play :B, amp: 3
  sleep a
  play :D5, amp: 3
  sleep a
  play :C5
  sleep a
  play chord( :A4, :minor), release: a+1, amp: 4
  sleep a + 3
end
define :part2 do
  play :E6, amp: 4
  sleep a
  play :Ds6, amp: 3
  sleep a
  play :E6, amp: 3
  sleep a
  play :Ds6, amp: 3
  sleep a
  play :E6, amp: 4
  sleep a
  play :B5, amp: 3
  sleep a
  play :D6, amp: 3
  sleep a
  play :C6, amp: 3
  sleep a
  play :E6, amp: 4
  sleep a
  play :B5, amp: 3
  sleep a
  play :D6, amp: 3
  sleep a
  play :C6, amp: 3
  sleep a
  play chord( :A5, :minor), release: a+2, amp: 4
  sleep a
  play chord( :A4, :minor), release: a+1, amp: 4
  sleep a + 3
end

define :part3 do
  play :A4, amp: 4
  sleep a + 1
  play :C4, amp: 3
  sleep a
  play :E4, amp: 3
  sleep a
  play :A4, amp: 3
  sleep a
  play chord( :E3, :major), release: a+1, amp: 4
  play :B4, amp: 4
  sleep a + 1
  play :E4, amp: 3
  sleep a
  play :Gs4, amp: 3
  sleep a
  play :B4, amp: 3
  sleep a
  play :Gs4, amp: 3
  sleep a
  play :B4, amp: 3
  sleep a
  play chord( :A4, :minor), release: a+1, amp: 4
  #sleep a + 2
end

define :part4 do
  play :C5, amp: 3
  sleep 2 + a
  play :E5, amp: 3
  sleep a
  play :Ds5, amp: 3
  sleep a
  play :E5, amp: 3
  sleep a
  play :Ds5, amp: 3
  sleep a
  play :E5, amp: 3
  sleep a
  play :B4, amp: 3
  sleep a
  play :D5, amp: 3
  sleep a
  play :C5, amp: 3
  sleep a
  play chord( :A4, :minor), release: a+1, amp: 4
end

define :part5 do
  play :C4, amp: 3
  sleep 2 + a
  play :E6, amp: 3
  sleep a
  play :Ds6, amp: 3
  sleep a
  play :E6, amp: 3
  sleep a
  play :B5, amp: 3
  sleep a
  play :D6, amp: 3
  sleep a
  play :C6, amp: 3
  sleep a
  play chord( :A5, :minor), release: a+1, amp: 1.5
  play a + 2
end
define :part6 do
  play :A4
  sleep a + 1
  play :C4, amp: 3
  sleep a
  play :E4, amp: 3
  sleep a
  play :A4, amp: 3
  sleep a
  play chord( :E4, :major7), release: a+1, amp: 4
  sleep a+2
end

define :part7 do
  a = 0.5
  play :E5, amp: 3
  sleep a
  play :Ds5, amp: 3
  sleep a
  play :E5, amp: 3
  sleep a
  play :Ds5, amp: 3
  sleep a
  play :E5, amp: 3
  sleep a
  play :B, amp: 3
  sleep a
  play :D5, amp: 3
  sleep a
  play :C5, amp: 3
  sleep a
  play chord( :A4, :minor), release: 3, amp: 4
  play :A4, amp: 3
  sleep a + 1
  play :C4, amp: 3
  sleep a
  play :E4, amp: 3
  sleep a
  play :A4, amp: 3
  sleep a
  play chord( :E4, :major7), release: 3, amp: 4
  play :B4, amp: 3
  sleep a + 1
  play :E4, amp: 3
  sleep a
  play :Gs4, amp: 3
  sleep a
  play :B4, amp: 3
  sleep a
  play chord( :A4, :minor), release: 3, amp: 4
end
define :part8 do
  a = 0.5
  play :C5, amp: 3
  sleep 2
  play :E5, amp: 3
  sleep a
  play :Ds5, amp: 3
  sleep a
  play :E5, amp: 3
  sleep a
  play :Ds5, amp: 3
  sleep a
  play :E5, amp: 3
  sleep a
  play :B4, amp: 3
  sleep a
  play :D5, amp: 3
  sleep a
  play :C5, amp: 3
  sleep a
  play chord( :A4, :minor), release: 3, amp: 4
  play :C5, amp: 3
  sleep 2
  play :E5, amp: 3
  sleep a
  play :Ds5, amp: 3
  sleep a
  play :E5, amp: 3
  sleep a
  play :Ds5, amp: 3
  sleep a
  play :E5, amp: 3
  sleep a
  play :B4, amp: 3
  sleep a
  play :D5, amp: 3
  sleep a
  play :C5, amp: 3
  sleep a
  play chord( :A4, :minor), release: 3, amp: 4
end
define :part9 do
  a = 0.5
  play :A4, amp: 3
  sleep a
  play :C4, amp: 3
  sleep a
  play :E4, amp: 3
  sleep a
  play :A4, amp: 3
  sleep a
  play chord( :E4, :major7), release: 3
  play :B4, amp: 3
  sleep a * 3
  play :E4, amp: 3
  sleep a
  play :C5, amp: 3
  sleep a
  play :B4, amp: 3
  sleep a
  play chord( :A4, :minor), release: 3, amp: 4
  play :A4, amp: 3
  sleep a * 3
  play :B4, amp: 3
  sleep a
  play :C5, amp: 3
  sleep a
  play :D5, amp: 3
  sleep a
  play chord( :C4, :major), release: 3, amp: 4
  play :E5, release: 1.5, amp: 3
  sleep a * 3
  play :G4, amp: 3
  sleep a
  play :F5, amp: 3
  sleep a
  play :E5, amp: 3
  sleep a
  play chord( :G4, :major), release: 3, amp: 4
  sleep a+1
end
define :part10 do
  a = 0.5
  play :A5, amp: 3
  sleep a
  play :C5, amp: 3
  sleep a
  play :E5, amp: 3
  sleep a
  play :A5, amp: 3
  sleep a
  play chord( :E5, :major7), release: 3
  play :B5, amp: 3
  sleep a * 3
  play :E5, amp: 3
  sleep a
  play :C6, amp: 3
  sleep a
  play :B5, amp: 3
  sleep a
  play chord( :A5, :minor), release: 3
  play :A5, amp: 3
  sleep a * 3
  play :B5, amp: 3
  sleep a
  play :C6, amp: 3
  sleep a
  play :D6, amp: 3
  sleep a
  play chord( :C5, :major), release: 3, amp: 4
  play :E6, release: 1.5, amp: 3
  sleep a * 3
  play :G5, amp: 3
  sleep a
  play :F6, amp: 3
  sleep a
  play :E6, amp: 3
  sleep a
  play chord( :G5, :major), release: 3, amp: 4
  sleep a + 1
end
define :part11 do
  a = 0.5
  play :D5, release: 1.5, amp: 4
  sleep a * 3
  play :F4, amp: 4
  sleep a
  play :E5, amp: 4
  sleep a
  play :D5, amp: 4
  sleep a
  play chord( :A4, :minor), release: 3, amp: 4
  play :C4, amp: 4
  sleep a * 3
  play :E4, amp: 4
  sleep a
  play :D5, amp: 4
  sleep a
  play :C4, amp: 4
  sleep a
  play chord( :E, :major), release: 4
  #sleep a + 1
  play :D6, release: 1.5, amp: 3
  sleep a * 3
  play :F5, amp: 3
  sleep a
  play :E6, amp: 3
  sleep a
  play :D6, amp: 3
  sleep a
  play chord( :A5, :minor), release: 3
  play :C5, amp: 3
  sleep a * 3
  play :E5, amp: 3
  sleep a
  play :D6, amp: 3
  sleep a
  play :C5, amp: 3
  sleep a
  play chord( :E, :major), release: 4
  #sleep a
end
define :part12 do
  play :B4, amp: 3
  sleep a
  play :E4, amp: 3
  sleep a
  play :E5, amp: 3
  sleep a
  play :E4, amp: 3
  sleep a
  play :E6, amp: 3
  sleep a
  play :E4, amp: 3
  sleep a
  play :E5, amp: 3
  sleep a
  play :E4, amp: 3
  sleep a
  #sample :ambi_glass_rub
  play :E5, amp: 3
  sleep a
  play :Ds5, amp: 3
  sleep a
  play :E5, amp: 3
  sleep a
  play :Ds5, amp: 3
  sleep a
  play :E5, amp: 3
  sleep a
  play :Ds5, amp: 3
  sleep a
  play :E5, amp: 3
  sleep a
  play :Ds5, amp: 3
  sleep a
  play :E5, amp: 3
  sleep a
  play :Ds5, amp: 3
  sleep a
  play :E5, amp: 3
  sleep a
  play :B4, amp: 3
  sleep a
  play :D5, amp: 3
  sleep a
  play :C5, amp: 3
  sleep a
  play chord( :A4, :minor), release: 3, amp: 4
  play :A4, amp: 3
  sleep a * 3
  play :C4, amp: 3
  sleep a
  play :E4, amp: 3
  sleep a
  play :A4, amp: 3
  sleep a
  play chord( :E, :major), release: 3, amp: 4
  play :B4, amp: 3
  sleep a * 3
  play :E4, amp: 3
  sleep a
  play :C5, amp: 3
  sleep a
  play :B4, amp: 3
  sleep a
  play chord( :A3, :minor), release: 3, amp: 4
  sleep a
  play :B4, amp: 3
  sleep a
  play :E4, amp: 3
  sleep a
  play :E5, amp: 3
  sleep a
  play :E4, amp: 3
  sleep a
  play :E6, amp: 3
  sleep a
  play :E4, amp: 3
  sleep a
  play :E5, amp: 3
  sleep a
  play :E4, amp: 3
  sleep a
  #sample :ambi_glass_rub
  play :E5, amp: 3
  sleep a
  play :Ds5, amp: 3
  sleep a
  play :E5, amp: 3
  sleep a
  play :Ds5, amp: 3
  sleep a
  play :E5, amp: 3
  sleep a
  play :B4, amp: 3
  sleep a
  play :D5, amp: 3
  sleep a
  play :C5, amp: 3
  sleep a
  play chord( :A4, :minor), release: 3, amp: 4
  play :A4, amp: 3
  sleep a * 3
  play :C4, amp: 3
  sleep a
  play :E4, amp: 3
  sleep a
  play :A4, amp: 3
  sleep a
  play chord( :E, :major), release: 3, amp: 4
end

define :part13 do
  play :B5, amp: 3
  sleep a
  play :E5, amp: 3
  sleep a
  play :E6, amp: 3
  sleep a
  play :E5, amp: 3
  sleep a
  play :E7, amp: 3
  sleep a
  play :E5, amp: 3
  sleep a
  play :E6, amp: 3
  sleep a
  play :E5, amp: 3
  sleep a
  #sample :ambi_glass_rub
  play :E6, amp: 3
  sleep a
  play :Ds6, amp: 3
  sleep a
  play :E6, amp: 3
  sleep a
  play :Ds6, amp: 3
  sleep a
  play :E6, amp: 3
  sleep a
  play :Ds6, amp: 3
  sleep a
  play :E6, amp: 3
  sleep a
  play :Ds6, amp: 3
  sleep a
  play :E6, amp: 3
  sleep a
  play :B5, amp: 3
  sleep a
  play :D6, amp: 3
  sleep a
  play :C6, amp: 3
  sleep a
  play chord( :A5, :minor), release: 3, amp: 4
end
define :part14 do
  a = 1
  play :E5, amp: 4
  sleep a
  play :Ds5, amp: 3
  sleep a
  play :E5, amp: 3
  sleep a
  play :Ds5, amp: 3
  sleep a
  play :E5, amp: 4
  sleep a
  play :B, amp: 3
  sleep a
  play :D5, amp: 3
  sleep a
  play :C5
  sleep a
  play chord( :A4, :minor), release: a+1, amp: 4
  play :A4, amp: 3
  sleep a
  play :C4, amp: 3
  sleep a
  play :E4, amp: 3
  sleep a
  play :A4, amp: 3
  sleep a
  play chord( :E3, :major), release: a+1, amp: 4
  
end
define :part15 do
  play :A4, amp: 3
  sleep a + 1
  play :C4, amp: 3
  sleep a
  play :E4, amp: 3
  sleep a
  play :A4, amp: 3
  sleep a
  play chord( :E3, :major), release: a+1, amp: 4
  play :B4, amp: 3
  sleep a + 1
  play :E4, amp: 3
  sleep a
  play :Gs4, amp: 3
  sleep a
  play :B4, amp: 3
  sleep a
  play :Gs4, amp: 3
  sleep a
  play :B4, amp: 3
  sleep a
  play chord( :A4, :minor), release: a+1, amp: 4
  
  #sleep a + 2
end

define :part16 do
  play :C5, amp: 3
  sleep 2 + a
  play :E5, amp: 3
  sleep a
  play :Ds5, amp: 3
  sleep a
  play :E5, amp: 3
  sleep a
  play :B4, amp: 3
  sleep a
  play :D5, amp: 3
  sleep a
  play :C5, amp: 3
  sleep a
  play chord( :A4, :minor), release: a+1, amp: 4
end

define :part17 do
  play :A4, amp: 3
  sleep a + 1
  play :C4, amp: 3
  sleep a
  play :E4, amp: 3
  sleep a
  play :A4, amp: 3
  sleep a
  play chord( :E4, :major7), release: 3, amp: 4
  sleep a + 1
  play :B4, amp: 3
  sleep a
  play :E4, amp: 3
  sleep a
  play :C5, amp: 3
  sleep a
  play :B4, amp: 3
  sleep a
  play chord( :A4, :minor), release: 3, amp: 4
end

define :part17_2 do
  a = 0.5
  play :C6, amp: 3
  sleep 2+ a
  play :E6, amp: 3
  sleep a
  play :Ds6, amp: 3
  sleep a
  play :E6, amp: 3
  sleep a
  play :B5, amp: 3
  sleep a
  play :D6, amp: 3
  sleep a
  play :C6, amp: 3
  sleep a
  play chord( :A5, :minor), release: a+1, amp: 1.5
  play a + 2
end


in_thread do
  intro
  sleep 8
  part1
  sleep 3
  part2
  part3
  part4
  part5
  part6
  part7
  part8
  live_loop :drum do
    sample :sn_dolf, amp: 0.3
    sleep 1
    stop if tick >= 37
  end
  part9
  part10
  part11
  part12
  part13
  live_loop :drum do
    sample :drum_tom_mid_hard, amp: 0.2
    sleep 1
  end
  a = 1
  sleep 3
  part14
  part2
  part15
  part16
  live_loop :drum do
    sample :sn_dolf, amp: 0.1
    sleep 1
    stop if tick >= 11
  end
  part17
  sleep 1
  part7
  part10
  part11
  live_loop :drum do
    sample :sn_dolf, amp: 0.1
    sleep 1
    stop if tick >= 15
  end
  sleep 4
  part10
  part15
  part16
  live_loop :drum do
    sample :sn_dolf, amp: 0.1
    sleep 1
    stop if tick >= 11
  end
  part17
  complete_song
end