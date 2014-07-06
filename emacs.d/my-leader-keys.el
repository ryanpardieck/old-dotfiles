;eventually bind leader-b to the C-x b binding of ido-switch-buffer
;bind the c-x o switch-window
;bind c-x c-f find file
;bind the projectile find file
;bind acejump 

;acejump = spacebar
;bind focus window
;bind kill window
;bid jump to tree?



(evil-leader/set-key
  "e" 'ido-find-file
  "b" 'ido-switch-buffer
  "v" 'switch-window
  "f" 'projectile-find-file
  "k" 'ido-kill-buffer
  "sh" 'evil-window-split
  "sv" 'evil-window-vsplit
  "ww" 'evil-save
  "wa" 'save-some-buffers
  "x" 'smex
  "inv" 'whitespace-mode
  "sb" 'sr-speedbar-toggle
  "sk" 'evil-window-delete  

)
