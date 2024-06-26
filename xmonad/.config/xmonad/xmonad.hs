import XMonad

main = xmonad def
  { terminal = myTerminal
  , modMask = myModMask
  }

main = xmonad =<< statusBar myBar myPP toggleStrutsKey myConfig

myTerminal = "alacritty"
myModMask = mod4Mask
