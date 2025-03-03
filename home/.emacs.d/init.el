(use-package telega
  :load-path  "~/repos/telega.el"
  :commands (telega)
  :defer t)

(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(blink-cursor-mode 0)

(load-theme 'modus-vivendi-tritanopia t)
(add-to-list 'default-frame-alist
             '(font . "Iosevka Nerd Font-18"))

(global-set-key (kbd "M-0") 'telega)
(define-key global-map (kbd "M-o") 'telega-chat-with)
(define-key global-map (kbd "M-b") 'telega-switch-buffer)

(global-set-key (kbd "M-h") 'previous-buffer)
(global-set-key (kbd "M-l") 'next-buffer)
