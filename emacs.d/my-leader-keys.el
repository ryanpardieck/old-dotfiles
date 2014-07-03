;eventually bind leader-b to the C-x b binding of ido-switch-buffer
;bind the c-x o switch-window
;bind c-x c-f find file
;bind the projectile find file
;bind acejump 



(evil-leader/set-key
  "e" 'ido-find-file
  "ii" 'ido-switch-buffer
  "w" 'switch-window
  "f" 'projectile-find-file
  "k" 'ido-kill-buffer
  "sh" 'evil-window-split
  "sv" 'evil-window-vsplit
)
