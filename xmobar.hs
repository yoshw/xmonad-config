-- xmobar config used by Vic Fryzel
-- Author: Vic Fryzel
-- http://github.com/vicfryzel/xmonad-config

-- tweaks by Yoshua Wakeham

Config {
    font = "xft:Fixed-8",
    bgColor = "#000000",
    fgColor = "#ffffff",
    -- position = Static { xpos = 0, ypos = 0, width = 1920, height = 16 },
    position = Top,
    lowerOnStart = True,
    commands = [
        Run Kbd [("us(dvorak)", "DV"), ("us", "US")],
        Run Volume "default" "Master" ["-h","#FFB6B0","-l","#CEFFAC","-n","#FFFFCC"] 10,
        --need with_mpd to get this to work ...
        --Run MPD ["-t", "<state>: <artist> - <track>"] 10,
        Run Weather "YMML" ["-t","<tempC>C <skyCondition>","-L","64","-H","77","-n","#CEFFAC","-h","#FFB6B0","-l","#96CBFE"] 36000,
        Run MultiCpu ["-t","Cpu: <total0> <total1> <total2> <total3>","-L","30","-H","60","-h","#FFB6B0","-l","#CEFFAC","-n","#FFFFCC","-w","3"] 10,
        Run Memory ["-t","Mem: <usedratio>%","-H","8192","-L","4096","-h","#FFB6B0","-l","#CEFFAC","-n","#FFFFCC"] 10,
        Run Swap ["-t","Swap: <used>/<total>","-H","1024","-L","512","-h","#FFB6B0","-l","#CEFFAC","-n","#FFFFCC"] 10,
        -- ethernet connection
        -- Run Network "em1" ["-t","Net: <rx>, <tx>","-H","200","-L","10","-h","#FFB6B0","-l","#CEFFAC","-n","#FFFFCC"] 10,
        Run Wireless "wlp5s0" ["-t","Wless: <quality>","-H","200","-L","10","-h","#FFB6B0","-l","#CEFFAC","-n","#FFFFCC"] 10,
        Run Date "%a %b %_d %l:%M" "date" 10,
        Run StdinReader
    ],
    sepChar = "%",
    alignSep = "}{",
    template = "%StdinReader% }{ [%kbd%]        %default:Master%        %multicpu%   %memory%   %swap%   %wlp5s0wi%        <fc=#FFFFCC>%date%</fc>   %YMML%"
}
