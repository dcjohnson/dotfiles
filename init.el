(defun packages ()
  (require 'package)
  (add-to-list 'package-archives '("melpa" . "http://www.melpa.org/packages/"))
  (when (< emacs-major-version 24)
    (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))
  (package-initialize))

(defun global-autocomplete ()
  (require 'auto-complete-config)
  (global-auto-complete-mode t))

(defun go ()
  (require 'go-autocomplete)
  (add-hook 'go-mode-hook
	    (lambda ()
	      (setq indent-tabs-mode t)
	      (setq tab-width 2))))

(defun haskell ()
  (require 'haskell-mode))

(defun colors ()
  (load-theme 'gruvbox t)
  (global-font-lock-mode 0))

(defun automodes ()
  (add-to-list 'auto-mode-alist '("\\.asm\\'" . text-mode)))

(packages)
(global-autocomplete)
(go)
(haskell)
(colors)
(automodes)
