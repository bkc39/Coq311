;; This is the list of packages installed by default.
;;
;; Installing New Packages
;; =======================
;;
;; All packages here are installed using the default Emacs package
;; manager, package.el. To install a package you should add the
;; package name to the list 'required-packages' below. Emacs will
;; automatically verify that all packages in this list are installed
;; at startup. If they are not installed, it will install them
;; automatically.
;;
;; Installing a Package From Source
;; ================================
;;
;; Not all Emacs packages can be installed from package.el. To install
;; a package from source you should follow the following (approximate process)
;;
;; 1. Download the desired package and move the directory to
;;    $HOME/.emacs.d/<package-name>
;; 2. Add the line:
;;      (add-to-list 'load-path "~/.emacs.d/<package-name>)
;; 3. Add the line
;;      (require '<package-name>)
;;    to this file.
;; 4. Add any additional configuration options for that package that you want
;;    to the file package-customizations.el. (optional)
;;
;; If the above steps don't work, check the documentation for the
;; package you want on the Emacs wiki:
;;   http://www.emacswiki.org
;; Usually, Google will point here here when you search the package name.

(require 'package)

;; Adds the package repositories
(add-to-list 'package-archives
    '("melpa" . "http://melpa.milkbox.net/packages/") t)
(add-to-list 'package-archives
    '("marmalade" . "http://marmalade-repo.org/packages/") t)
(package-initialize)

;; List of required packages
(defvar required-packages
  '(auto-complete
    color-theme
    exec-path-from-shell
    tuareg
    whitespace)
  "A list of packages to ensure are installed at launch")

;; Ensures that all the above packages are installed.
(require 'cl)
(defun packages-installed-p ()
  (loop for p in required-packages
    when (not (package-installed-p p)) do (return nil)
    finally (return t)))

;; If not all packages are installed, check them one by one and
;; install the missing ones.
(unless (packages-installed-p)
  ;; check for new packages (package versions)
  (message "%s" "Emacs is now refreshing its package database")
  (package-refresh-contents)
  (message "%s" " done.")
  ;; install the missing packages
  (dolist (p required-packages)
    (when (not (package-installed-p p))
      (package-install p))))
