setlocal EnableDelayedExpansion
Set LF=^


for /f %%a in ('copy /z "%~f0" nul') do set "CR=%%a"
set VIDEOURL=http://example.com/video.mkv
set REFERER=example.com
c:\ffmpeg\bin\ffplay.exe -hide_banner -headers "Referer: %REFERER%!CR!!LF!" -fs -i "%VIDEOURL%"