(setq backup-directory-alist
      `((".*" . ,temporary-file-directory)))
(setq auto-save-file-name-transforms
      `((".*" ,temporary-file-directory t)))
(setq require-final-newline t)

(setq package-archives '(("gnu" . "https://elpa.gnu.org/packages/")
                         ("melpa" . "https://melpa.org/packages/")))

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["black" "#d55e00" "#009e73" "#f8ec59" "#0072b2" "#cc79a7" "#56b4e9" "white"])
 '(custom-enabled-themes (quote (one-dark)))
 '(custom-safe-themes
   (quote
    ("59e82a683db7129c0142b4b5a35dbbeaf8e01a4b81588f8c163bd255b76f4d21" "b73a23e836b3122637563ad37ae8c7533121c2ac2c8f7c87b381dd7322714cd0" default)))
 '(fci-rule-color "#383838")
 '(fountain-pages-show-in-mode-line (quote force))
 '(org-agenda-files (quote ("~/notes/")))
 '(org-export-backends (quote (ascii html icalendar latex md)))
 '(org-support-shift-select t)
 '(package-selected-packages (quote (spaceline neotree fountain-mode one-themes))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(add-hook 'emacs-startup-hook
	  (lambda ()
	    (load-theme 'one-dark)
	    ))


(require 'spaceline-config)
(spaceline-emacs-theme)

(setq note-format "~/notes/%F.org")

(defun make-note()
  "Create a new page for today"
  (interactive)
  (find-file (format-time-string note-format)))

(global-set-key (kbd "M-n") 'make-note)
