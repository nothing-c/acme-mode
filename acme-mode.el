;; -*- coding: utf-8; lexical-binding: t; -*-

(defvar acme-keymap (make-sparse-keymap) "Acme-mode keymap")
(define-key acme-keymap (kbd "<C-mouse-1>") 'copy-region-as-kill)
(define-key acme-keymap (kbd "<C-down-mouse-1>") 'copy-region-as-kill)
(define-key acme-keymap (kbd "<C-mouse-2>") 'kill-region)
(define-key acme-keymap (kbd "<C-down-mouse-2>") 'kill-region)
(define-key acme-keymap (kbd "<C-mouse-3>") #'(lambda () (interactive) (search-forward (word-at-point))))
(define-key acme-keymap (kbd "<C-down-mouse-3>") #'(lambda () (interactive) (search-forward (word-at-point))))
(define-key acme-keymap (kbd "<C-S-mouse-1>") 'insert-parentheses)
(define-key acme-keymap (kbd "<C-S-mouse-2>") 'shell-command)
(define-key acme-keymap (kbd "<C-S-mouse-3>") #'(lambda () (interactive) (search-backward (word-at-point))))
(define-key acme-keymap (kbd "<M-mouse-1>") 'compile)
(define-key acme-keymap (kbd "<M-mouse-2>") 'find-file-at-point)
(define-key acme-keymap (kbd "<M-mouse-3>") 'save-buffer)
(define-key acme-keymap (kbd "<C-M-mouse-1>") 'indent-region)
(define-key acme-keymap (kbd "<C-M-mouse-2>") 'comment-region)
(define-key acme-keymap (kbd "<C-M-mouse-3>") 'eval-region)
(define-key acme-keymap (kbd "<mouse-4>") 'previous-buffer)
(define-key acme-keymap (kbd "<mouse-5>") 'next-buffer)
(define-key acme-keymap (kbd "<C-mouse-4>") 'ibuffer)
(define-key acme-keymap (kbd "<C-mouse-5>") 'ibuffer)
(define-key acme-keymap (kbd "<M-mouse-4>") 'undo)
(define-key acme-keymap (kbd "<M-mouse-5>") 'vc-next-action) ;; No specific redo command

(define-minor-mode acme-mode
  "Minor mode for useful mouse commands, somewhat inspired by Plan9's Acme editor"
  :global t
  :init-value t
  :lighter " acme"
  :keymap acme-keymap
  )
(add-to-list 'emulation-mode-map-alists
             `((acme-mode . ,acme-keymap)))
(provide 'acme-mode)
