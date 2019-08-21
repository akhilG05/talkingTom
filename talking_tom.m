% Delay Based Pitch Shift

%%
n = input('Number of seconds to be Recorded: ');
Fs = 44100;
nBits = 24;

recording = audiorecorder(Fs, nBits, 1);
disp('Recording...')
recordblocking(recording, n);
y = getaudiodata(recording);
audiowrite('test.wav', y, Fs);

%% Pitch Shift
input_file = 'test.wav';
semitones = 8;
output = 10.*pitch_shift(input_file, semitones);

%% Play Results
out = audioplayer(output, Fs);
disp('Playing...')
play(out);