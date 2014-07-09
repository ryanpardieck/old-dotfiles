;eventually bind leader-b to the C-x b binding of ido-switch-buffer
;bind the c-x o switch-window
;bind c-x c-f find file
;bind the projectile find file
;bind acejump 

;acejump = spacebar
;bind focus window
;bind kill window
;bid jump to tree?

;bind projectile-ibuffer

(evil-leader/set-key
  "e" 'ido-find-file
  "b" 'ido-switch-buffer
  "v" 'switch-window
  "f" 'projectile-find-file
  "ib" 'projectile-ibuffer
  "k" 'ido-kill-buffer
  "" 'frame-configuration-to-register
  "" 'jump-to-register ;these are for switching between workspaces
  "sh" 'evil-window-split
  "sv" 'evil-window-vsplit
  "ww" 'evil-save
  "wa" 'save-some-buffers
  "x" 'smex
  "inv" 'whitespace-mode
  "sb" 'sr-speedbar-toggle
  "sk" 'evil-window-delete  
  ;setting workgroup(/projects) managing keys now
  "pp" 'wg-switch-to-workgroup
  "pr" 'wg-reload-session
  "ps" 'wg-save-session ;how to do autsaving?
  "term" 'multi-term


)
