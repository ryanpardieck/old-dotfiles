;enable smart tab in eval-expression minibuffer
(define-key read-expression-map [(tab)] 'hippie-expand)

;an undo for smart tab
(defun hippie-unexpand ()
  (interactive)
  (hippie-expand 0))

(define-key read-expression-map [(backtab)] 'hippie-unexpand)
