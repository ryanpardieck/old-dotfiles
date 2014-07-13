;my-packages.el

(require 'cl)

(require 'package)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/") t)
(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/") t)
(package-initialize)


(defvar required-packages
  '(  
    key-chord 
    evil
    evil-leader
    evil-nerd-commenter 
    magit
    ace-jump-mode
    multi-term
    ;elscreen
    sr-speedbar 
    smex
    linum-relative
    hlinum
    flycheck ;config later
    auctex ;config later, and, something for camelcase/littleword movement?
    workgroups2

    org-pomodoro ;bind some keys eventually?
    rinari
    ido-ubiquitous
    ido-vertical-mode 
    auto-complete 
    switch-window 
    projectile
    flx-ido
    powerline-evil
    monokai-theme 
    ujelly-theme 
    ;color-theme-solarized 
    ;graphene
    ;yasnippet
  ) "a list of packages to ensure are installed at launch.")



; method to check if all packages are installed
(defun packages-installed-p ()
  (loop for p in required-packages
        when (not (package-installed-p p)) do (return nil)
        finally (return t)))

; if not all packages are installed, check one by one and install the missing ones.
(unless (packages-installed-p)
  ; check for new packages (package versions)
  (message "%s" "Emacs is now refreshing its package database...")
  (package-refresh-contents)
  (message "%s" " done.")
  ; install the missing packages
  (dolist (p required-packages)
    (when (not (package-installed-p p))
      (package-install p))))


