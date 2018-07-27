;;; evil-exwm-state.el --- Evil states to interface exwm mode.

;; Copyright (C) 2018 domenzain
;;
;; Author: M. Domenzain <luis.domenzain@parrot.com>
;; Keywords: convenience editing evil exwm mnemonic
;; Created: Tue Jul 24 18:10:00 CEST 2018
;; Version: 1.0
;; Package-Requires: ((evil "1.0.9") (exwm "0.19"))
;; URL: https://github.com/domenzain/evil-exwm-state

;; This file is not part of GNU Emacs.

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

;;; Commentary:

;; Adds two new Evil states `exwm' and `exwm insert' for EXWM's line and char
;; modes. These are analogous to `normal' and `insert'

;; For more info visit: https://github.com/domenzain/evil-exwm-state

(require 'evil)
(require 'exwm)

(evil-define-state exwm
  "`exwm state' interfacing exwm mode."
  :tag " <X> "
  :enable (motion)
  :message "-- EXWM --"
  :intput-method f
  :entry-hook (evil-exwm-state/enter-exwm))

(evil-define-state exwm-insert
  "Replace insert state in `exwm state'."
  :tag " <Xi> "
  :enable (motion)
  :message "-- EXWM-INSERT --"
  :input-method t
  :entry-hook (evil-exwm-state/enter-exwm-insert))

(defun evil-exwm-state/escape-exwm ()
  "Quit `evil-exwm-insert-state'."
  (interactive)
  (evil-exwm-state))

(defun evil-exwm-state/enter-exwm-insert ()
  "Quit `evil-exwm-insert-state'."
  (call-interactively 'exwm-input-release-keyboard))

(defun evil-exwm-state/enter-exwm ()
  "Quit `evil-exwm-insert-state'."
  (call-interactively 'exwm-input-grab-keyboard))

(define-key evil-exwm-state-map "i" 'evil-exwm-insert-state)

;; Ensure initial state is char mode / exwm-insert
(setq exwm-manage-configurations '((t char-mode t)))
(evil-set-initial-state 'exwm-mode 'exwm-insert)

(provide 'evil-exwm-state)

;;; evil-exwm-state.el ends here
