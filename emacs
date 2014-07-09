;move to the vagrant home dir

(cd "~/../../vagrant/")

(load "~/.my-emacs/my-loadpackages.el")
(add-hook 'after-init-hook '(lambda ()
  (load "~/.my-emacs/my-noexternals.el")
  (load "~/.my-emacs/my-custom-mappings.el")
  (load "~/.my-emacs/my-leader-keys.el")
))

(add-hook 'auto-save-hook (lambda () (wg-save-session)))

























;!!!---ATTRIBUTION--!!!
;A running list of resources I used in making all my emacs configs (not including just this .emacs files)
;http://toumorokoshi.github.io/emacs-from-scratch-part-2-package-management.html
 
