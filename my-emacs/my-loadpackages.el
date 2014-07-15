; my-loadpackages.el
; loading package
(load "~/.my-emacs/my-packages.el")

;(require 'graphene)

(load-theme 'monokai t)

(ido-mode t)
(setq ido-enable-flex-matching t)
(setq ido-use-virtual-buffers t)
(setq ido-everywhere t)
(setq ido-create-new-buffer 'always)
(require 'flx-ido)
(flx-ido-mode 1)
;;disable ido faces to see flx highlights
(setq ido-use-faces nil)


;NOTE: to fix a window,  M-: (setq window-size-fixed t)
;can replace t with 'width or 'height

(require 'uniquify)
(setq uniquify-buffer-name-style 'forward)

(require 'saveplace)
(setq-default save-place t)

(show-paren-mode 1) ;highlight the matching paren etc. when cursor over one
(setq-default indent-tabs-mode nil) ;reindent with spaces not tabs

(require 'smex)
(smex-initialize)
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)
;; This is your old M-x.
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)

(require 'ido-vertical-mode)
(ido-vertical-mode 1)

(require 'ido-ubiquitous)
(ido-ubiquitous-mode 1)


(require 'auto-complete)
(auto-complete-mode 1)
(global-auto-complete-mode 1)
(ac-flyspell-workaround)

(require 'switch-window)
(global-set-key (kbd "C-x o") 'switch-window)

;(require 'smart-tab)
;(smart-tab-mode 1)
;(global-smart-tab-mode 1)
;(load "~/.my-emacs/my-undo-smart-tab.el")


(require 'projectile)
(projectile-global-mode)
(setq projectile-indexing-method 'native) ;probably delete this later
(setq projectile-enable-caching t) ;probably always keep this on
(setq projectile-remember-window-configs t) ;makes this a bit more like sublime's project switching--a different tab for each project



;making it easier to use the X clipboard 
(setq x-select-enable-clipboard t
        x-select-enable-primary t
        save-interprogram-paste-before-kill t
	;improving apropos search
        apropos-do-all t
        mouse-yank-at-point t
	;dirs of saved backups and buffer-places
        save-place-file (concat user-emacs-directory "places")
        backup-directory-alist `(("." . ,(concat user-emacs-directory
                                                 "backups")))
        auto-save-file-name-transforms `((".*" ,user-emacs-directory t))
        backup-by-copying t
        delete-old-versions t
        kept-new-versions 6
        kept-old-versions 2
        version-control t

)




(require 'key-chord)
(key-chord-mode 1)

(require 'evil-leader)
(global-evil-leader-mode)
(evil-leader/set-key "\\" 'find-file)


(require 'evil)
(evil-mode 1)


(require 'powerline-evil)
(powerline-default-theme)
(powerline-evil-vim-color-theme)
;(powerline-evil-tag-verbose)
;color adjustments modified from https://github.com/jonathanchu/emacs-powerline/issues/11
;these are mostly to fix how it looks in mintty
(setq powerline-color1 "#657b83")
(setq powerline-color2 "#839496")

;the light "terminal green" of the powerline filename text is 63d615
(set-face-attribute 'mode-line nil
                    :foreground "#fdf6e3"
                    :background "#901b0e" ;1e90ff light blue (shades of red based on d62815)
                    :box nil)
(set-face-attribute 'mode-line-inactive nil 
                    :foreground "#fdf6e3"
                    :background "#002345";002345 darker blue 
                    :box nil)



;(require 'evil-nerd-commenter)
;evil nerd commenter, just needs one line (for defaults)
(evilnc-default-hotkeys)

;the following could be used instead of the above

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


(require 'multi-term)
(setq multi-term-program "/bin/bash") ;change to zsh once get it to render right


(require 'ace-jump-mode)
(define-key global-map (kbd "C-c SPC") 'ace-jump-mode)
(define-key evil-normal-state-map (kbd "SPC") 'ace-jump-mode)

(require 'sr-speedbar)
(custom-set-variables
 '(speedbar-show-unknown-files t)
)
(setq sr-speedbar-auto-refresh t
      sr-speedbar-max-width 30
      sr-speedbar-right-side nil 
)


(winner-mode 1) ;undo and redo for window changes (bind to leader later)


(require 'linum-relative)
(global-linum-mode)

(require 'hlinum)
(hlinum-activate)

(require 'flycheck)
(global-flycheck-mode)

(require 'rinari)


(require 'magit)
(define-key global-map (kbd "C-c m") 'magit-status)

(require 'workgroups2)
(setq wg-default-session-file "~/.emacs_workgroups")
(setq wg-use-default-session-file 1)
(workgroups-mode 1) ;keep workgroups2 + this line at the bottom of packages(?)


;(require 'yasnippet)
;(yas-global-mode 1)
;(yas-load-directory "~/.emacs.d/snippets")
;(add-hook 'term-mode-hook (lambda()
;    (setq yas-dont-activate t)))





