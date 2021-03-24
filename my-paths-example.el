;;;; Link files in Windows
(when (string-equal system-type "windows-nt")
  (setenv "HOME" "G:")						; this is where '~' refers to
  (setq user-emacs-directory "~/.emacs.d/") 				; needs to specify full-path
  (setq org-roam-graph-executable "~/.emacs.d/win/Graphviz/bin/dot.exe"); executable to make graphs (already downloaded)
  (setq TeX-macro-global						; where you've downloaded Texlive only required for Latex
   '("c:/texlive/2020/texmf-var/tex/" "c:/texlive/texmf-local/tex/" "c:/texlive/texmf-local/bibtex/bst/" "c:/texlive/2020/texmf-dist/tex/" "c:/texlive/2020/texmf-dist/bibtex/bst/"))
;;; Locate linux functions in windows
  (add-to-list 'exec-path "~/.emacs.d/win") 				; for any additional files needed by windows
  (setenv "PATH"
    (concat						       	; Paths for Windows version of linux executables
     "C:/msys64/mingw64/bin" ";"					; if you have it installed it is prefered over cygwin
     "C:/texlive/2020/bin/win32" ";" 					; PDFlatex
     "C:/cygwin64/usr/local/bin" ";"					; Cygwin
     "C:/cygwin64/usr/sbin" ";"
     "C:/cygwin64/bin" ";"
     "C:/Program Files/Git/bin" ";"	 				; Git
     (getenv "PATH"))))


;;;; Link files in Linux
(when (string-equal system-type "gnu/linux")
  (setenv "HOME" "/home/chaos")			       		; this is where '~' refers to
  (setq user-emacs-directory "~/.emacs.d/"))
  


;;;Program specific links 
(setq default-directory "~/gdrive")					; default when searching
(setq org-directory "~/entropy/")					; where your org-notes are stored
(setq org-download-image-dir "~/gdrive/Library/img/misc/")		; Where you want images downloaded with org-download stored
(setq org-roam-directory "~/entropy/")	       			; Where you keep your org-roam notes
(setq org-brain-path "~/entropy/brain")				; Structured org-brain notes
(setq bibtex-completion-bibliography '("~/entropy/roam.bib"))		; Your main bibleography

