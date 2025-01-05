;; -*- coding: utf-8; lexical-binding: t; -*-

(define-key acme-keymap (kbd "<C-down-mouse-1>") 'copy-region-as-kill)
(define-key acme-keymap (kbd "<C-down-mouse-2>") 'kill-region)
(define-key acme-keymap (kbd "<C-down-mouse-3>") 'yank)
(define-key acme-keymap (kbd "<M-down-mouse-1>") 'eval-region)
(define-key acme-keymap (kbd "<M-down-mouse-2>") 'find-file-at-point)
(define-key acme-keymap (kbd "<M-down-mouse-3>") 'save-buffer)
(define-key acme-keymap (kbd "<C-M-down-mouse-1>") 'indent-region)
(define-key acme-keymap (kbd "<C-M-down-mouse-2>") '())
(define-key acme-keymap (kbd "<C-M-down-mouse-3>") '())

(define-minor-mode nckey-mode
  ""
  :global t
  :init-value t
  :lighter " acme"
  :keymap acme-keymap
)
(add-to-list 'emulation-mode-map-alists
             `((acme-mode . ,acme-keymap)))
(provide 'acme-mode)
