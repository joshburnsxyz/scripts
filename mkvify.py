#!/usr/bin/env python3

# PIP Dependencies
# - ffmpeg-python

import ffmpeg
import sys
import os

target_video_file = sys.argv[1]
filename_wo_ext = os.path.splitext(sys.argv[1])[0]
new_filename = f"{filename_wo_ext}.mkv"
input = ffmpeg.input(target_video_file)
output = ffmpeg.output(input.audio, input.video, new_filename, format='mkv')

print(output)
