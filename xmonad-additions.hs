svorakA5Spawn :: String
svorakA5Spawn = "/home/gonz/bin/svoraka5.sh"

seqwertySpawn :: String
seqwertySpawn = "/home/gonz/bin/seqwerty.sh"

bgphoneticSpawn :: String
bgphoneticSpawn = "/home/gonz/bin/bgphonetic.sh"

polishSpawn :: String
polishSpawn = "/home/gonz/bin/polish.sh"

czechSpawn :: String
czechSpawn = "/home/gonz/bin/czech.sh"

myStartupHook :: X ()
myStartupHook = do
    spawn svorakA5Spawn

main = xmonad $ defaultConfig 
                 { startupHook = myStartupHook
                 } `additionalKeys`
		[((mod1Mask .|. shiftMask, xK_F1), spawn svorakA5Spawn),
		 ((mod1Mask .|. shiftMask, xK_F3), spawn seqwertySpawn),
         ((mod1Mask .|. shiftMask, xK_F2), spawn bgphoneticSpawn),
         ((mod1Mask .|. shiftMask, xK_F4), spawn polishSpawn),
         ((mod1Mask .|. shiftMask, xK_F5), spawn czechSpawn)]
