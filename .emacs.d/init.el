;; C-u C-x C-x -- avoids activating or deactivates the mark
;; M- M-q -- justify parapgraph
;; C-M-S-v -- scroll-other-window-down
;; M-0 M-t transposes the words after/at the mark and the point
;; find-function M-x f-fu 
;; C-1 C-M-x -- eval-defun calls debug-on-entry for defun
;; C-M-x -- without prefix argument removes debug-on-entry for defun
;; debbugs-gnu-bugs `M-x d-g-b' -- search for bug numbers
;; re-builder `M-x re-b'
;; M-' -- abbrev-prefix-mark, identify a prefix before an abbreviation
;; M-- M-/ -- dabbrev-expand search after cursor
;; hs-minor-mode -- "hide show mode", folding in source code
;; C-x RET C-\ \ulcorner ⌜ \lrcorner ⌟
;; C-x 8 RET top left corner ⌜ C-x 8 RET bottom right corner ⌟
;; fill-region-as-paragraph: M-x f-r-a-
;; M-n -- in info clone info 
;; C-h I -- describe-input-method
;; M-C-l
;; M-s . -- isearch-forward-symbol-at-point bla.bla.sss
;; which-function-mode
;; C-x 4 a -- add-changelog-entry-other-window
;; C-x 4 0 -- kill-buffer-and-window
;; log-edit-insert-changelog M-x l-e-i-c
;; eval-buffer, M-x e-bu
;; C-x M-o -- dired omit mode
;; M-- M-SPC -- delete also following blank lines
;; C-x r C-SPC with preview :-)
;; C-0 C-x e -- repeat until error
;; C-x C-k C-i -- kmacro-insert-counter
;; C-x C-k n -- name macro
;; C-x 8 c -- ¢ (€ cent)
;; C-x SPC -- rectangle-mark-mode
;; C-x . -- fill-prefix, 
;; C-x C-n -- set-goal-column

;; ==============================
;; interesting stuff

;; M- M-q -- justify parapgraph
;; tags-query-replace, M-x t-q-r
;; C-x $ -- set-selective-display
;; C-x M-: or C-x ESC ESC -- repeat-complex-command like C-%!
;; C-M-% <\([^>]+\)> RET <\,(downcase \1)> RET makes XML tags lowercase
;; C-M-% [0-9]+ RET \,(1+ \#&) RET adds 1 to numbers
;;   \#& is the matched string interpreted as a number
;; M-x align-regexp RET = RET, aligns the = and adds spaces before equals signs
;; C-u M-! in the minibuffer
;; http://www.emacswiki.org/emacs/RecursiveEdit
;; M-s in the minibuffer

;; ==============================
;; gnus

;; C-c C-a -- attach file, same as C-c RET f
;; G R -- gnus-group-make-rss-group
;; gnus-read-ephemeral-emacs-bug-group C-c d (debbugs)

;; ======================================================================
;; frame configuration

;; initial frame must be in the xresources
;(setq initial-frame-alist default-frame-alist)

;; color theme
(setq default-frame-alist
       '(
	 (width . 90)
	 (height . 54)
	 (reverse . t)
;	 (menu-bar-lines . t)
	 (vertical-scroll-bars . nil)
		      ))


;; ======================================================================
;; recursive edits

(setq enable-recursive-minibuffers t)
(minibuffer-depth-indicate-mode t)

;; ======================================================================
;; abbrevs

(setq default-abbrev-mode t)

;; self-insert-command does only expand-abbrev when non word character
;; follows so e.g: does "for example:"! :-)
(define-abbrev-table 'global-abbrev-table
  '(;; expand-region-abbrevs, M-x e-r-ab				
    ;; acronyms
    ("ack" "acknowledgment")
    ("afair" "as far as I remember")
    ("afaiu" "as far as I understand")
    ("aiui" "as I understand it")
    ("fwiw" "for what its worth")
    ("hth" "hope that helps")
    ("ianal" "I am not a lawyer")
    ("iirc" "if I remember correctly")
    ("imo" "in my opinion")
    ("iow" "in other words")
    ("irl" "in real life")
    ("jftr" "just for the record")
    ("rtfm" "read the fine manual")
    ;; abbreviation
    ("alu" "aluminium")			;Alu as well
    ("eg" "for example")		; Eg -> For example
    ("e.g" "for example")
    ("ha" "Hallo")
    ("dh" "das heißt")
    ("glg" "ganz liebe Grüße")
    ("lg" "liebe Grüße")
    ("nr" "Nummer")
    ("nu" "number")
    ("sgf" "Sehr geehrte Frau")
    ("sgh" "Sehr geehrter Herr")
    ("sgd" "Sehr geehrte Dame, sehr geehrter Herr,")
    ;; Wochentage
    ("Mo" "Montag")
    ("Di" "Dienstag")
    ("Mi" "Mittwoch")
    ("Do" "Donnerstag")
    ("Fr" "Freitag")
    ("Sa" "Samstag")
    ("So" "Sonntag")
    ("Wo" "Woche")
    ("Wn" "Wochen")
    ;; month
    ("Jan" "Januar")
    ("Feb" "Februar")
    ("Mär" "März")
    ("Apr" "April")
    ("Jun" "Juni")
    ("Jul" "Juli")
    ("Aug" "August")
    ("Sep" "September")
    ("Okt" "Oktober")
    ("Nov" "November")
    ("Dez" "Dezember")
    ("jan" "January")
    ("feb" "February")
    ("mar" "March")
    ("apr" "April")
    ("jun" "June")
    ("jul" "July")
    ("aug" "August")
    ("sep" "September")
    ("oct" "October")
    ("nov" "November")
    ("dec" "December")
    ;; below "dot" abbreviations are ONLY triggert with `C-x ''
    ;; ("e.g." "for example")		; E.g -> For example
    ("mo." "Monday")
    ("tu." "Tuesday")
    ("we." "Wednesday")
    ("th." "Thursday")
    ("fr." "Friday")
    ("sa." "Saturday")
    ("su." "Sunday")
    ("Mo." "Montag")
    ("Di." "Dienstag")
    ("Mi." "Mittwoch")
    ("Do." "Donnerstag")
    ("Fr." "Freitag")
    ("Sa." "Samstag")
    ("So." "Sonntag")
    ("Jan." "Januar")
    ("Feb." "Februar")
    ("Mär." "März")
    ("Apr." "April")
    ("Jun." "Juni")
    ("Jul." "Juli")
    ("Aug." "August")
    ("Sep." "September")
    ("Okt." "Oktober")
    ("Nov." "November")
    ("Dez." "Dezember")
    ;; teilweise Duden Abkürzungen
    ("dt" "deutsch")
    ("eigtl" "eigentlich")
    ("ggf" "gegebenenfalls")
    ("ggs" "Gegensatz")
    ("ggss" "Gegensätze")
    ("ggt" "Gegenteil")
    ("ia" "im Allgemeinen")
    ("ig" "im Gegenteil")
    ("io" "in Ordnung")
    ("jh" "Jahrhundert")
    ("jmd" "jemanden")
    ("mdal" "mundartlich")
    ("mfg" "mit freundlichem Gruß")
    ("mfgg" "mit freundlichen Grüßen")
    ("oä" "oder Ähnliches")
    ("offz" "offiziell")
    ("svw" "so viel wie")
    ("usw" "und so weiter")
    ("ua" "unter Anderem")
    ("uä" "und Ähnliches")
    ("ugs" "umgangssprachlich")
    ("vgl" "vergleiche")
    ;; typos
    ("udn" "und")
    ("teh" "the")
    ("diter" "dieter")
    ("deiter" "dieter")
    ("inof" "info")
    ;; multi word abbrevs not yet possible
    ;; ("geehrter\ frau" "geehrte\ frau")
    ;; ("geehrter\ Frau" "geehrte\ Frau") 
    )
  "This is the global abbrev table."
  :regexp "\\(?:[^[:word:]_.]\\|^\\)\\([[:word:]_.]+\\)[^[:word:]]*")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(server-mode 1)				;call server-start

;; ======================================================================
;; eww

;; default browser
(setq browse-url-browser-function 'eww-browse-url)

;; proxy
;; (setq url-proxy-services
;;       nil
;; ;      '(("http" . "http://cias3basic.conti.de:8080"))
;;						     )

;; --- google search
(setq eww-search-prefix "http://google.de/search?q=")

;; --- startpage web search
;;(setq eww-search-prefix "https://startpage.com/do/m/mobilesearch?query=")


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; 
;; M-r & C-l :-/

(setq recenter-positions '(top middle bottom))
(when (boundp 'move-to-window-line-positions)
  (setq move-to-window-line-positions '(.2 middle .8)))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; 
;; IDO (obsolete with icomplete?)

;;  clashes confusingly in bindings with completion code RET <-> C-j

;; (require 'ido)
;; (ido-mode nil)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; diff

(add-hook 'diff-mode-hook
	  (lambda ()
	    (whitespace-mode 1)))

(setq set-mark-command-repeat-pop t)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; ansys-mode

(add-to-list 'load-path "~/a-m/")

;(load "default.el")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; my mark paragraph, the same logic should apply to C-M-h as well and
;; to M-@ TODO: fix the negative argument!!
;; TODO: when behind the last paragraph

;(global-set-key [(hyper g)] 'goto-line)

;; lisp/textmodes/paragraphs.el
;(global-set-key [?\M-h] 'mark-paragraph)
;(global-set-key [?\M-h] 'my-mark-paragraph)

;; ======================================================================
;; ess R

(add-to-list 'load-path "/usr/share/emacs/site-lisp/ess")
(require 'ess-site)

;; ======================================================================
;; maxima

;; (add-to-list `load-path "/usr/share/emacs24/site-lisp/maxima")
;; (require `maxima)

;; ============================================================
;; tramp

(setq tramp-default-method "ssh")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; gnugo

;; (add-to-list 'load-path "/home/uidg1626/.emacs.d/elpa/gnugo-3.0.0")
;; (require 'gnugo)

;; (setq gnugo-option-history (list "--komi 5.5 --boardsize 13"))
;; This is an example of the kinds of options that
;; can be specified at the "GNU Go options" prompt.
;; Type ‘M-! gnugo --help RET’ to see the full list.
;; (NB: It's best to do that before ‘M-x gnugo RET’.)

;; (setq gnugo-xpms 'gnugo-imgen-create-xpms)
;; This is the standard way to display the Go Board graphically.
;; You can change
;;   'gnugo-imgen-create-xpms
;; to
;;   nil
;; if you want to stick to textual display.

;; (add-hook 'gnugo-start-game-hook 'gnugo-image-display-mode)
;; The display can be toggled between textual and graphical.
;; It normally starts as textual.  This arranges to toggle it
;; for you at the beginning of the game.

;; ======================================================================
;; `frames' from Alan Mackenzie

(set-frame-name "Work")
(modify-frame-parameters (selected-frame) '((acm-no . 2)))
(find-file "~/org/blog/dddlll.org")

(defun assign-acm-no (frame)
  "FRAME is a (typically newly created) frame.  Give it an acm-no
frame-parameter if there is one free (in the range 0..11).
Return that number or nil."
  (let ((assigned (make-bool-vector 12 nil)) (f (frame-list)) n)
    (while f
      (if (setq n (frame-parameter (car f) 'acm-no))
	  (aset assigned n t))
      (setq f (cdr f)))
    (setq n 0)
    (while (and (< n 12) (aref assigned n))
      (setq n (1+ n)))
    (if (= n 12)
	nil
      (modify-frame-parameters frame `((acm-no . ,n)))
      n)))

;(add-hook 'after-make-frame-functions 'assign-acm-no)
(add-hook 'before-save-hook 'time-stamp)

(defun find-acm-no-frame (n)
  "Return the frame with parameter (acm-no . N), or nil."
  (let ((f (frame-list)))
    (while (and f (not (eq (frame-parameter (car f) 'acm-no) n)))
      (setq f (cdr f)))
    (car f)))

(defun focus-frame-acm-no (n)
  "Select the frame with acm-no frame-parameter N, or do nothing."
  (let ((frame (find-acm-no-frame n)))
    (when frame (select-frame-set-input-focus frame))
    (framep frame)))

;; frame 2 onwards and frame 1
(defun focus-or-make-named-frame ( no)
  "If there is no frame with frame No NO, create one."
  (unless (focus-frame-acm-no no)
    (let ((frame (make-frame-command)))
      (select-frame-set-input-focus frame)
      (cond
       ((= no 1)
	(modify-frame-parameters frame '((acm-no . 1)))
	(set-frame-name "F1 Informations, info, eww")
	(unless (get-buffer "*info*")
	  (info))
	)
       ((= no 2)
	;; (modify-frame-parameters frame '((acm-no . 2)))
	;; (set-frame-name "F2 Work")
	)
       ((= no 3)
	(modify-frame-parameters frame '((acm-no . 3)))
	(set-frame-name "F3 Communications Gnus, BBDB, eww")
	(unless (get-buffer "*Group*")
	  (gnus-unplugged))
	)
       ((= no 4)
	(modify-frame-parameters frame '((acm-no . 4)))
	(set-frame-name "F4 OS terminal, shell")
	(split-window-horizontally)
	(unless (get-buffer "*terminal*")
	  (term "/bin/bash"))
	(next-window)
	(shell)
	)
       ((= no 5)
	(modify-frame-parameters frame '((acm-no . 5)))
	(set-frame-name "Time Management, Organisation and Planning")
	(unless (get-buffer "*Calendar*")
	  (calendar))
	)
       ((= no 6)
	(modify-frame-parameters frame '((acm-no . 6)))
	(set-frame-name "Programming and Configuration")
	(unless (get-buffer "init.el")
	  (find-file "~/.emacs.d/init.el"))
	)
       ((= no 7)
	(modify-frame-parameters frame '((acm-no . 7)))
	(set-frame-name "Dired File Manipulations")
	(dired "~"))
       ((= no 8)
	(modify-frame-parameters frame '((acm-no . 8)))
	(set-frame-name "Helper Frame, Calc"))
       ((= no 9)
	(modify-frame-parameters frame '((acm-no . 9)))
	(set-frame-name "ERC"))
       ((= no 10)
	(modify-frame-parameters frame '((acm-no . 10)))
	(set-frame-name "Image Dired"))
       ))))

(global-set-key [help]  (lambda () "Switch to frame 1"  (interactive) (focus-or-make-named-frame 1)))
(global-set-key [undo]  (lambda () "Switch to frame 2"  (interactive) (focus-or-make-named-frame 2)))
(global-set-key [redo]  (lambda () "Switch to frame 3"  (interactive) (focus-or-make-named-frame 3)))
(global-set-key [XF86New]  (lambda () "Switch to frame 4"  (interactive) (focus-or-make-named-frame 4)))
(global-set-key [XF86Open]  (lambda () "Switch to frame 5"  (interactive) (focus-or-make-named-frame 5)))
(global-set-key [XF86Close]  (lambda () "Switch to frame 6"  (interactive) (focus-or-make-named-frame 6)))
(global-set-key [XF86Reply]  (lambda () "Switch to frame 7"  (interactive) (focus-or-make-named-frame 7)))
(global-set-key [XF86MailForward]  (lambda () "Switch to frame 8"  (interactive) (focus-or-make-named-frame 8)))
(global-set-key [XF86Send]  (lambda () "Switch to frame 9"  (interactive) (focus-or-make-named-frame 9)))
;;(global-set-key [] (lambda () "Switch to frame 10" (interactive) (focus-or-make-named-frame 10)))
;; F11 is toggle full-screen
;; (global-set-key [f12] (lambda () "Switch to frame 12" (interactive) (focus-or-make-named-frame 12)))

;; ======================================================================
;; `doc-view'

(add-hook 'doc-view-mode-hook 'auto-revert-mode)

;; ======================================================================
;; bbdb3 debian package  bbdb-file default is ~/.emacs.d/bbdb

(add-to-list 'load-path "/usr/share/emacs24/site-lisp/bbdb3")
(load "bbdb-loaddefs")
(bbdb-initialize 'gnus 'message) ; mail address integration
;(setq bbdb-message-all-addresses t)

(setq bbdb-complete-mail-allow-cycling t)

(require 'bbdb-print)
(add-to-list 'bbdb-print-omit-fields 'phone)
(add-to-list 'bbdb-print-omit-fields 'notes)
(setq bbdb-print-alist '(
			 (omit-area-code . "^(000) ")
			 (phone-on-first-line . "^[	]*$")
			 (ps-fonts)
			 (font-size . 12)
			 (quad-hsize . "3.15in")
			 (quad-vsize . "4.5in")))

;; ======================================================================
;; erc

;;kornbluth in Frankfurt
;(require 'erc)
(setq erc-nick "diwi")
(setq erc-server "kornbluth.freenode.net")
(setq erc-user-full-name "H. Dieter Wilhelm")
;; 8000 no ssl connection, 7000 ssh
(setq erc-port 8000)

;; we don't like server messages
(setq erc-hide-list '("JOIN" "PART" "QUIT"))

;; we don't like server messages in the status line
(setq  erc-track-exclude-server-buffer t
       erc-track-visibility 'selected-visible ;look to the selected
					;frame if channel is there
					;invisible
       erc-track-exclude '("&bitlbee"))

;; count the unseen messages
(setq erc-track-showcount t)

;; ======================================================================
;; calendar, diary and apppointments

(setq diary-file "~/.emacs.d/diary")

;; some mode line additions
(setq display-time-day-and-date t
      display-time-24hr-format t
      display-time-use-mail-icon t
      )
(display-time)
(display-battery-mode 1)

;; we need to put this at the endo of the mode line because there is
;; no whitespace at the end of appt!
(appt-activate 1)
(setq appt-display-interval 5)
(setq appt-message-warning-time 15) ; [12] factor of appt-display-interval


(require 'calendar)

;; Calendar location Frankfurt Germany
;; in CEST central european summer time (Germany)

(setq calendar-latitude 50.7)
(setq calendar-longitude -8.6)
(setq calendar-location-name "Franfurt, De")

(calendar-set-date-style 'iso)
(setq calendar-week-start-day 1)
(setq calendar-mark-holidays-flag t)
(setq calendar-mark-diary-entries-flag t)
(setq calendar-view-diary-initially-flag t)
(add-hook 'diary-display-hook 'diary-fancy-display)
(add-hook 'diary-list-entries-hook 'diary-sort-entries t)
(add-hook 'calendar-today-visible-hook 'calendar-mark-today)

;; include "Filename"
     ;; (add-hook 'diary-list-entries-hook 'diary-include-other-diary-files)
     ;; (add-hook 'diary-mark-entries-hook 'diary-mark-included-diary-files)


;; fancy diary
(add-hook 'diary-display-hook 'diary-fancy-display)


;; show calendar weeks
(copy-face font-lock-constant-face 'calendar-iso-week-face)
(set-face-attribute 'calendar-iso-week-face nil
			 :height 0.7)
(setq calendar-intermonth-text
      '(propertize
	(format "%2d"
		(car
		 (calendar-iso-from-absolute
		  (calendar-absolute-from-gregorian (list month day year)))))
	'font-lock-face 'calendar-iso-week-face))
(copy-face 'default 'calendar-iso-week-header-face)
(set-face-attribute 'calendar-iso-week-header-face nil
			 :height 0.7)
(setq calendar-intermonth-header
      (propertize "CW"                  ; or e.g. "KW" in Germany
		  'font-lock-face 'calendar-iso-week-header-face))

;; German holidays by law in Hesse
;(setq solar-n-hemi-seasons
;      '("Spring" "Summer" "Autumn" "Winter"))

(setq holiday-general-holidays
      '((holiday-fixed 1 1 "Neujahr")	;1
	(holiday-fixed 5 1 "1. Mai, Tag der Arbeit") ;2
	(holiday-fixed 10 3 "Tag der Deutschen Einheit") ;3
	))

(setq holiday-christian-holidays
      '(
;       (holiday-float 12 0 -4 "1. Advent" 24)
;        (holiday-float 12 0 -3 "2. Advent" 24)
;        (holiday-float 12 0 -2 "3. Advent" 24)
;        (holiday-float 12 0 -1 "4. Advent" 24)
	(holiday-fixed 12 25 "1. Weihnachtstag") ;4
	(holiday-fixed 12 26 "2. Weihnachtstag") ;5
;        (holiday-fixed 1 6 "Heilige Drei Könige")
	;; Date of Easter calculation taken from holidays.el.
	(let* ((century (1+ (/ displayed-year 100)))
	       (shifted-epact (% (+ 14 (* 11 (% displayed-year 19))
				    (- (/ (* 3 century) 4))
				    (/ (+ 5 (* 8 century)) 25)
				    (* 30 century))
				 30))
	       (adjusted-epact (if (or (= shifted-epact 0)
				       (and (= shifted-epact 1)
					    (< 10 (% displayed-year 19))))
				   (1+ shifted-epact)
				 shifted-epact))
	       (paschal-moon (- (calendar-absolute-from-gregorian
				 (list 4 19 displayed-year))
				adjusted-epact))
	       (easter (calendar-dayname-on-or-before 0 (+ paschal-moon 7))))
	  (holiday-filter-visible-calendar
	   (mapcar
	    (lambda (l)
	      (list (calendar-gregorian-from-absolute (+ easter (car l)))
		    (nth 1 l)))
	    '(
;              (-48 "Rosenmontag")
	      ( -2 "Karfreitag (Good Friday)")   ;6
;              (  0 "Ostersonntag")
	      ( +1 "Ostermontag (Easter Monday)")	;7
	      (+39 "Christi Himmelfahrt (Ascension Day)") ;8
;              (+49 "Pfingstsonntag")
	      (+50 "Pfingstmontag (Whitmonday)")	;9
	      (+60 "Fronleichnam (Corpus Christi)")	;10
	      ))))
;        (holiday-fixed 8 15 "Mariä Himmelfahrt")
;        (holiday-fixed 11 1 "Allerheiligen")
;        (holiday-float 11 3 1 "Buß- und Bettag" 16)
;        (holiday-float 11 0 1 "Totensonntag" 20)
	))
 (setq calendar-holidays
      (append holiday-general-holidays holiday-local-holidays
	      holiday-christian-holidays))

;; ======================================================================
;; Message mode + Gnus, when not yet in Gnus
; must be read before ~/.emacs.d/gnus.el

(setq user-mail-address "dieter@duenenhof-wilhelm.de"
      user-full-name "H. Dieter Wilhelm")

(setq message-signature-file "~/.emacs.d/signature")

(setq gnus-init-file "~/.emacs.d/gnus")

(require 'auth-source)
(setq auth-sources '("~/.authinfo.gpg"))
(setq message-confirm-send t
      message-kill-buffer-on-exit t)
;; message-max-buffers ;[10] old messages remain in Emacs

(setq gnus-inhibit-startup-message t)	;no gnu image

;; ======================================================================
;; calc

(require 'calc)
(add-to-list 'calc-embedded-announce-formula-alist '(org-mode . "# Embed\n\\(# .*\n\\)*"))

(setq calc-user-token-chars '("€"))

;; ======================================================================
;; org-mode

;(add-to-list 'load-path "/usr/local/src/org-8.2.7b/lisp")
(add-to-list 'load-path "~/org/elisp/org-mode/lisp")
(require 'info)
(setq Info-directory-list Info-default-directory-list)
;(add-to-list 'Info-directory-list "/user/local/src/emacs-24.3/info")
;(add-to-list 'Info-directory-list "/user/local/src/org-8.2.7b/doc")
(add-to-list 'Info-directory-list "~/org/elisp/org-mode/doc")

(defun my-org-latex-headline-function (todo type priority text tags)
    "My default format function for a headline.
See `org-latex-format-headline-function' for details."
  (concat
;   (and todo (format "{\\bfseries\\sffamily %s} " todo))
   (cond ((equal todo "NEU") "\\textcolor{green}{\\bfseries\\sffamily NEU} ")
	 ((equal todo "ALT") "\\textcolor{red}{\\bfseries\\sffamily ALT} ")
	 ((equal todo "TODO") "\\textcolor{orange}{\\bfseries\\sffamily TODO} ")
	 )
   text
   (and priority (format " \\fbox{%c} " priority))
   (and tags
	(format "\\hfill{}\\textsc{%s}" (mapconcat
					 '(lambda (text) (format "\\hyperref[%s]{%s}" text text)) tags "$\\to$")))))

;(setq org-latex-format-headline-function 'my-org-latex-headline-function)
(setq org-latex-format-headline-function 'org-latex-format-headline-default-function)

;(defun my-headline-filter (data backend info))
;(add-to-list 'org-export-filter-headline-functions 'my-headline-filter)

(setq org-todo-keyword-faces '(
			       ("NEU" . '(:foreground "green"))
			       ("ALT" . '(:foreground "red"))
			       ("TODO" . '(:foreground "orange"))
			       ))

;; ----------------------------------------------------------------------
;; publishing

(setq org-publish-project-alist
      '(
	;; that are the translated files
	("org-files"
	 :sitemap-title "Die Dünenhof-Seite"
	 :auto-sitemap t
	 :base-directory "~/org/www/"
;	 :base-extension "org" ; org is the default
	 :publishing-directory "~/www.duenenhof-wilhelm4.de/"
	 :recursive t
	 :headline-levels 4             ; Just the default for this project.
	 :auto-preamble nil
	 :exclude "template.*\\|navigation.*"
;	 :completion-function (lambda ()(compile "make -f /home/dieter/org/www/makefile"))
	 :publishing-function org-html-publish-to-html
	 )
	;; images
	("images"
	 :base-directory "~/org/www/"
	 :base-extension "png\\|jpg\\|gif\\|swf\\|ico"
	 :publishing-directory "~/www.duenenhof-wilhelm4.de/"
	 :recursive t
	 :publishing-function org-publish-attachment
	 )
	;; static components except images
	("other"
	 :base-directory "~/org/www/"
	 :base-extension "css\\|js\\|pdf\\|mp3\\|ogg\\|htm\\|dote"
	 :publishing-directory "~/www.duenenhof-wilhelm4.de/"
	 :recursive t
	 :include ("dotemacs")
	 :publishing-function org-publish-attachment
	 )
	;; publish these components with C-c C-e X, C-c C-e P
	("duenenhof" :components ("org-files" "other"))
	))

(setq org-html-postamble t
      org-html-metadata-timestamp-format "%Y-%m-%d"
      org-html-postamble-format
      '(
	("de" "<p class=\"date\">Letzte Änderung: %C </p>\n<p class=\"creator\">Erzeugt von %c </p>\n")
	("en" "<p class=\"author\">Author: %a (%e)</p>\n<p class=\"date\">Modification date: %C </p>\n<p class=\"creator\">Generated by %c </p>\n")
	("fr" "<p class=\"author\">Auteur: %a (%e)</p>\n<p class=\"date\">Date de la modification: %C </p>\n<p class=\"creator\">Produit par %c </p>\n")
	;; ("de" "<p class=\"author\">Autor: %a (%e)</p>\n<p class=\"date\">Letzte Änderung: %C </p>\n<p class=\"creator\">Erzeugt von %c </p>\n")
	))

;; ----------------------------------------------------------------------
;; blog

(add-to-list 'load-path "~/org/elisp/org-mode/contrib/lisp/")
(require 'ox-rss)

(add-to-list 'org-publish-project-alist
      '("blog"
	 :base-directory "~/org/blog"
	 :html-extension "html"
	 :base-extension "org"
	 :publishing-directory "~/www.blog/"
	 :publishing-function (org-html-publish-to-html)
;         :html-preamble nil
;         :html-postamble nil
	 :html-head-extra
	 "<link rel=\"alternate\" type=\"application/rss+xml\"
		href=\"http://duenenhof-wilhelm.de/dieter/my-blog.xml\"
		title=\"RSS feed for Dieter's blog (DDDLLL)\">"))

(add-to-list 'org-publish-project-alist
	     '("blog-rss"
	       :base-directory "~/org/blog"
	       :base-extension "org"
	       :publishing-directory "~/www.blog/"
	       :publishing-function (org-rss-publish-to-rss)
	       :html-link-home "http://duenenhof-wilhelm.de/"
	       :html-link-use-abs-url t
	       :exclude ".*"
	       :include ("my-blog.org")))

;; ----------------------------------------------------------------------
;; ox-koma-letter

(require 'ox)
(require 'ox-beamer)
(eval-after-load 'ox '(require 'ox-koma-letter))
(eval-after-load 'ox-koma-letter
  '(progn
     (add-to-list 'org-latex-classes
		  '("my-letter"
		    "\\documentclass\[%
     DIV=14,
     fontsize=12pt,
     parskip=half\]%
     \{scrlttr2\}
     \[DEFAULT-PACKAGES]
     \[PACKAGES]
     \[EXTRA]"))
     (setq org-koma-letter-default-class "my-letter")))

(eval-after-load 'ox-latex
  '(add-to-list 'org-latex-packages-alist '("AUTO" "babel" t) t))

;; ----------------------------------------------------------------------
;; general

(setq org-use-speed-commands t
      org-export-allow-bind-keywords t
      org-enforce-todo-dependencies t
      org-agenda-include-diary t
      org-agenda-start-on-weekday nil	;start agend on current weekday
      org-agenda-span 'month
      org-deadline-warning-days 3
      org-show-siblings '((default nil) (isearch t) (bookmark-jump t) (occur-tree nil))
      org-show-entry-below nil
      )

(add-to-list 'org-latex-classes
	  '("koma-article"
	     "\\documentclass{scrartcl}
	      \\usepackage{scrpage2}
	     [EXTRA]"
	     ("\\section{%s}" . "\\section*{%s}")
	     ("\\subsection{%s}" . "\\subsection*{%s}")
	     ("\\subsubsection{%s}" . "\\subsubsection*{%s}")
	     ("\\paragraph{%s}" . "\\paragraph*{%s}")
	     ("\\subparagraph{%s}" . "\\subparagraph*{%s}"))
)
(add-to-list 'org-latex-classes
	  '("A-M"
	     "\\documentclass{beamer}"
 ;            org-beamer-sectioning
	     ("\\section{%s}" . "\\section*{%s}")
	     ("\\subsection{%s}" . "\\subsection*{%s}")
	     ("\\subsubsection{%s}" . "\\subsubsection*{%s}")
	     ("\\paragraph{%s}" . "\\paragraph*{%s}")
	     ("\\subparagraph{%s}" . "\\subparagraph*{%s}"))
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; babel

(load "ob-core")			;require not sufficient 2014-09-20

(org-babel-do-load-languages
 'org-babel-load-languages
 '((python . t)
   (R . t)
   (calc . t)
   (emacs-lisp . t)
   (sh . t)
   (latex . t)
   (maxima . t)
;   (ansys . t)
   ))

(setq org-confirm-babel-evaluate nil)

;; ======================================================================
;; dired

(require 'dired-x)
(setq dired-recusive-copies 'always
      dired-dwim-target t
      wdired-allow-to-change-permissions t
      dired-listing-switches "-hal --group-directories-first"
;      dired-omit-files "^\\.?#\\|^\\.$\\|^\\.\\.$"
      dired-omit-files "^\\.?#\\|^\\.$"
)

(put 'dired-find-alternate-file 'disabled nil)
(add-hook 'dired-mode-hook 'ensure-buffer-name-ends-in-slash)

(defun ensure-buffer-name-ends-in-slash ()
  "change buffer name to end with slash"
  (let ((name (buffer-name)))
    (if (not (string-match "/$" name))
	(rename-buffer (concat name "/") t))))

;; ======================================================================
;; In the beginning...
(global-hl-line-mode t)
(setq scroll-preserve-screen-position t)

(delete-selection-mode t)
(tool-bar-mode 0)
(scroll-bar-mode 0)
(setq inhibit-startup-screen t)
(setq initial-scratch-message nil)
(setq visible-bell t)

(icomplete-mode nil) ; clashes with ido behaviour
;(setq default-directory "") ; local to buffer

(column-number-mode 1)
(electric-pair-mode 1)
(show-paren-mode 1)
(setq parens-require-spaces nil)
(ffap-bindings)
(setq kill-read-only-ok t)

;; ======================================================================
;; ibuffer

(setq ibuffer-default-sorting-mode 'major-mode)

(add-to-list 'insert-pair-alist
	     '(?* ?*)
)
(add-to-list 'insert-pair-alist
	     '(?$ ?$)
)

;; (global-set-key [?\M-\"] 'insert-pair) ;outdated with electric-pair-mode
(global-set-key (kbd "M-SPC") 'cycle-spacing) 
(global-set-key (kbd "C-x C-b") 'ibuffer)
(global-set-key "\C-x4k" 'delete-other-windows-vertically)
(global-set-key "\C-c$" 'insert-pair)
(global-set-key "\C-c*" 'insert-pair)
(global-set-key "\C-ca" 'org-agenda)
;; iswitchbuffer obsolete with icomplete since 24.4
;(global-set-key "\C-cb" 'org-iswitchb)
(global-set-key "\C-cc" 'org-capture)
(global-set-key "\C-cd" 'gnus-read-ephemeral-emacs-bug-group)
(global-set-key "\C-ce" (lambda () (interactive) (ispell-change-dictionary "british")))
(global-set-key "\C-cf" (lambda () "french" (interactive) (ispell-change-dictionary "french")))
(global-set-key "\C-cg" (lambda () (interactive) (ispell-change-dictionary "deutsch")))
(global-set-key "\C-cm" (lambda () (interactive) (switch-to-buffer "*Group*")))
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ct" (lambda () (interactive) (switch-to-buffer "*terminal*")))
;(global-set-key "\C-cp" 'ffap) ; redundant with ffap-bindings
(global-set-key "\C-cw" 'eww)

;; (version)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(canlock-password "c0d21591887cac611a95eb26666a7d59556c64fb")
  '(display-time-mode t)
 '(indicate-empty-lines t)
 '(org-agenda-files (quote ("~/org/blog/dddlll.org")))
 '(send-mail-function (quote smtpmail-send-it))
 '(show-paren-mode t)
 '(smtpmail-smtp-server "smtp.gmail.com")
 '(smtpmail-smtp-service 25)
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "DejaVu Sans Mono" :foundry "unknown" :slant normal :weight normal :height 121 :width normal)))))
