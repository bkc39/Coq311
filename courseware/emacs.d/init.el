;;
;; This is the template Emacs configuration file for CS 3110!
;;
;; The included packages are:
;;   Tuareg Mode -- Major mode for editing Caml code.
;;   AucTeX Mode -- A package for writing and formatting TeX files.
;;   Color Theme -- A package for customizing the color theme of Emacs.
;;
;; This file also contains additional customizations to the general
;; Emacs environment, rather than the package-specific customizations
;; in package-customizations.el

;; Loads the customized packages
(load "$HOME/.emacs.d/package-customizations.el")

;;;;;;;;;;;;;;;;;;;;;;;;;; ADDITIONAL CONFIGURATIONS ;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; Here are a collection of available additional customizations that you can
;; enable or disable as you desire! Enable by uncommenting, or disable by
;; commenting out the line (the 'begin comment' character is ';').

;; Enables line numbers
(global-linum-mode 1)

;; Enables column numbers
(setq column-number-mode t)

;; Set window size to 80 characters
(add-to-list 'default-frame-alist '(width . 81))

;; Sets spaces to tabs
(setq-default indent-tabs-mode nil)

;; Don't scroll when pointer reaches end of screen
(setq auto-window-vscroll nil)
(setq backup-inhibited t)

;; Prevent autoscroll from jumping
(setq scroll-conservatively 10000)

;; Speed up closing-parenthesis blink
(setq blink-matching-delay 0.1)

;; Sets the initial scratch buffer prompt
(setq
 initial-scratch-message
 ";; I have no idea why this does what it does, but I'll write it
;; down and maybe you can tell me.
;;     - Dexter Kozen")

; Don't wrap lines of text on to the next graphical line.
; Instead, let the extra text "go past the screen".
(setq-default truncate-lines t)

;; Yanks go into system clipboard
(setq x-select-enable-clipboard t)

;; Let user change their own files
(setq wdired-allow-to-change-permissions t)

;; Accept 'y' and 'n' as answers to yes/no questions
(defalias 'yes-or-no-p 'y-or-n-p)

;; Case-insensitive tab-completion
(setq dabbrev-case-distinction nil)

;; Other settings
(setq dabbrev-case-fold-search nil)

;; Allow cycling through buffers
(setq windmove-wrap-around t)

;; Set refresh rate for the minibuffer
(setq echo-keystrokes 0.1)

;; Do delete entire highlighted regions
(delete-selection-mode t)

;; Do not delete an entire marked region
(setq delete-active-region nil)

;; Jump to a line
(global-set-key "\C-x;" 'goto-line)

;; UNCOMMENT THE FOLLOWING TO ENABLE

;; Stop saving automatically
;;(setq auto-save-default nil)

;; Turn off start message
;; (setq inhibit-startup-message t)

;; Turns off the menu bar.
;; (menu-bar-mode -1)

;; Turns off the tool bar.
;; (tool-bar-mode -1)

;; Turn off scroll bar
;; (scroll-bar-mode -1)

;; Get cursor to stop blinking
;; (blink-cursor-mode -1)

;; Extra keyboard controls for switching windows
;; (global-set-key (kbd "C-x C-o") 'windmove-down)
;; (global-set-key (kbd "C-x C-p") 'windmove-right)

;; Jump to matching parenthesis
;; (defun match-paren (arg)
;;   "Go to the matching paren if on a paren; otherwise insert %."
;;   (interactive "p")
;;   (cond ((looking-at "\\s\(") (forward-list 1) (backward-char 1))
;;         ((looking-at "\\s\)") (forward-char 1) (backward-list 1))
;;         (t (self-insert-command (or arg 1)))))
;; (global-set-key (kbd "%") 'match-paren)

;; Pretty-print the lambda symbol
;; (setq lambda-symbol (string (make-char 'greek-iso8859-7 107)))
;; (mapatoms (lambda (sym)
;;             (if (get sym 'disabled)
;;                 (put sym 'disabled nil))))
