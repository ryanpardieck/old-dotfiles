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
  "bb" 'projectile-switch-to-buffer
  "v" 'switch-window
  "f" 'projectile-find-file
  "ib" 'ibuffer 
  "bk" 'ido-kill-buffer
  "sh" 'evil-window-split
  "sv" 'evil-window-vsplit
  "ww" 'evil-save
  "wa" 'save-some-buffers
  "inv" 'whitespace-mode
  "sb" 'sr-speedbar-toggle
  "sk" 'evil-window-delete  
  ;setting workgroup(/projects) managing keys now
  "pp" 'wg-switch-to-workgroup
  "pr" 'wg-reload-session
  "ps" 'wg-save-session ;how to do autsaving?
  "term" 'multi-term
  ;undo/undo-undo window config changes
  "wib" 'winner-undo
  "wif" 'winner-redo
  "k" 'evil-scroll-up
  "j" 'evil-scroll-down 
  "<SPC>" 'ace-jump-mode ;even jumps windows!!
  "n" 'evil-scroll-down
  "m" 'evil-scroll-up
  ;the x key will be my leader-leader, my leader namespace
  "xx" 'smex
  "xfly" 'flycheck-list-errors
  "xterm" 'multi-term
  "xdir" 'dired

)



;nerd-commenter keys
;; (defun evilnc-default-hotkeys ()
;;   "Set the hotkeys of evil-nerd-comment"
;;   (interactive)
;;   (global-set-key (kbd "M-;") 'evilnc-comment-or-uncomment-lines)
;;   (global-set-key (kbd "C-c l") 'evilnc-comment-or-uncomment-to-the-line)
;;   (global-set-key (kbd "C-c c") 'evilnc-copy-and-comment-lines)
;;   (global-set-key (kbd "C-c p") 'evilnc-comment-or-uncomment-paragraphs)
;;   (eval-after-load 'evil
;;        (define-key evil-normal-state-map ",ci" 'evilnc-comment-or-uncomment-lines)
;;        (define-key evil-normal-state-map ",cl" 'evilnc-comment-or-uncomment-to-the-line)
;;        (define-key evil-normal-state-map ",cc" 'evilnc-copy-and-comment-lines)
;;        (define-key evil-normal-state-map ",cp" 'evilnc-comment-or-uncomment-paragraphs)
;;        (define-key evil-normal-state-map ",cr" 'comment-or-uncomment-region)
;;        ))

